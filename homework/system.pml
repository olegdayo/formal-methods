chan SN_light = [1] of {byte};
chan WN_light = [1] of {byte};
chan EW_light = [1] of {byte};
chan ES_light = [1] of {byte};
chan NE_light = [1] of {byte};
chan P_light = [1] of {byte};

byte n = 10;

byte currentTurn = 1;
byte queue [6]  = {0, 0, 0, 0, 0, 0};
short requests [7]  = {0, 0, 0, 0, 0, 0};
bool statuses [6]  = {false, false, false, false, false, false};

proctype TrafficLight (
    byte curr; byte next;
    byte first; byte second; byte third; byte forth; byte fifth;
    chan traffic){

    short firsthirdValue = 0;
    short secondValue = 0;
    short thirdValue = 0;
    short forthValue = 0;
    short fifthValue = 0;

    short nValue = 0;
    byte tmp = 0;

    do
        :: currentTurn == curr  ->
        if
        :: traffic?tmp->
                requests[0] = 0; 
                queue[curr-1] = tmp; 

                if
                    :: statuses[curr-1] == true ->
                           requests [curr] =0; 
                           statuses[curr-1] = false;
                    :: else -> skip;
                fi;
                
                if
                :: requests[curr] > 0  ->
                        if
                        :: (requests[first] == 0  ) && 
                            (requests[second] == 0 ) && 
                            (requests[third] == 0  ) &&
                            (requests[forth] == 0  ) &&
                            (requests[fifth] == 0  )
                            ->
                                statuses[curr-1] = true;
                                queue[curr-1] = 0;
                                currentTurn = next

                        :: else ->
                                if
                                    :: requests[first] > 0 -> firsthirdValue = requests[first];
                                    :: else -> firsthirdValue = 0;
                                fi;
                                if
                                    :: requests[second] >0 -> secondValue = requests[second];
                                    :: else -> secondValue = 0;
                                fi;
                                if
                                    :: requests[third] >0 -> thirdValue = requests[third];
                                    :: else -> thirdValue = 0;
                                fi
                                if
                                    :: requests[forth] >0 -> forthValue = requests[forth];
                                    :: else -> forthValue = 0;
                                fi
                                if
                                    :: requests[fifth] >0 -> fifthValue = requests[fifth];
                                    :: else -> fifthValue = 0;
                                fi

                                nValue = requests[curr];

                                if 
                                            :: firsthirdValue > nValue || secondValue > nValue || thirdValue > nValue ->
                                                    requests[curr] =  nValue + n; 
                                                    requests[first] = firsthirdValue + n;
                                                    requests[second] = secondValue + n;
                                                    requests[third] = thirdValue + n;
                                                    requests[forth] = forthValue + n;
                                                    requests[fifth] = fifthValue + n;
                                                    skip
                                            :: else ->
                                                 statuses[curr-1] = true;
                                                 queue[curr-1] = 0;
                                                 requests[curr] = 999 + curr

                                 fi;
                        currentTurn = next;
                        requests[0] = 0;
                        fi
                :: else ->
                        requests[curr] = curr;
                        currentTurn = next;
                fi;
            fi;
    od
}

proctype TrafficGenerator(){
    do
        :: SN_light ! 1
        :: WN_light ! 1
        :: EW_light ! 1
        :: ES_light ! 1
        :: NE_light ! 1
        :: P_light ! 1
    od
}

init {
    /* 1: SN conflicts: EW(3), ES(4), NE(5) */
    run TrafficLight(1, 2, 3, 4, 5, 0, 0, SN_light);

    /* 2: WN conflicts: EW(3), NE(5) */
    run TrafficLight(2, 3, 3, 5, 0, 0, 0, WN_light);

    /* 3: EW conflicts: SN(1), WN(2), NE(5), P(6) */
    run TrafficLight(3, 4, 1, 2, 5, 6, 0, EW_light);

    /* 4: ES conflicts: P(6), SN(1), NE(5) */
    run TrafficLight(4, 5, 6, 1, 5, 0, 0, ES_light);

    /* 5: NE conflicts: EW(3), WN(2), ES(4), SN(1), P(6) */
    run TrafficLight(5, 6, 3, 2, 4, 1, 6, NE_light);

    /* 6: P conflicts: EW(3), ES(4), NE(5) */
    run TrafficLight(6, 1, 3, 4, 5, 0, 0, P_light);

    run TrafficGenerator();
}

/* Safety: none intersection paths both have green */
ltl s1 { [] !(statuses[0] && (statuses[2] || statuses[3] || statuses[4])) }                                 /* SN vs {EW, ES, NE} */
ltl s2 { [] !(statuses[1] && (statuses[2] || statuses[4])) }                                                /* WN vs {EW, NE} */
ltl s3 { [] !(statuses[2] && (statuses[0] || statuses[1] || statuses[4] || statuses[5])) }                  /* EW vs {SN, WN, NE, P} */
ltl s4 { [] !(statuses[3] && (statuses[5] || statuses[0] || statuses[4])) }                                 /* ES vs {P, SN, NE} */
ltl s5 { [] !(statuses[4] && (statuses[2] || statuses[1] || statuses[3] || statuses[0] || statuses[5])) }   /* NE vs {EW, WN, ES, SN, P} */
ltl s6 { [] !(statuses[5] && (statuses[2] || statuses[3] || statuses[4])) }                                 /* P vs {EW, ES, NE} */

/* Liveness: each status will eventually turn from red to green */
ltl l1 { [] ((queue[0]==1 && !statuses[0]) -> <> statuses[0]) }
ltl l2 { [] ((queue[1]==1 && !statuses[1]) -> <> statuses[1]) }
ltl l3 { [] ((queue[2]==1 && !statuses[2]) -> <> statuses[2]) }
ltl l4 { [] ((queue[3]==1 && !statuses[3]) -> <> statuses[3]) }
ltl l5 { [] ((queue[4]==1 && !statuses[4]) -> <> statuses[4]) }
ltl l6 { [] ((queue[5]==1 && !statuses[5]) -> <> statuses[5]) }

/* Fairness: each status becomes red */
ltl f1 { [] <> !statuses[0] }
ltl f2 { [] <> !statuses[1] }
ltl f3 { [] <> !statuses[2] }
ltl f4 { [] <> !statuses[3] }
ltl f5 { [] <> !statuses[4] }
ltl f6 { [] <> !statuses[5] }
