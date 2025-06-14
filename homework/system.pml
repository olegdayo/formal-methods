chan SN_light = [1] of {byte};
chan WN_light = [1] of {byte};
chan EW_light = [1] of {byte};
chan ES_light = [1] of {byte};
chan NE_light = [1] of {byte};
chan P_light = [1] of {byte};

byte n = 10;

byte currentTurn = 1;
byte queue [6]  = {0,0,0,0,0,0};
short requests [7]  = {0,0,0,0,0,0};
bool statuses [6]  = {false, false, false, false, false, false};

proctype TrafficLight (byte number; byte nextNum; byte fProblem; byte sProblem; byte tProblem; byte uProblem; byte oProblem; chan tlChan){
    short fValue=0;
    short sValue=0;
    short tValue=0;
    short nValue = 0;
    short uValue = 0;
    short oValue = 0;
    byte temp = 0;

    do
        ::  currentTurn == number  ->
        if
        // Есть трафик для этого светофора
        ::    tlChan?temp->
                requests[0] = 0; 
                queue[number-1] = temp; 
                // atomic {  
                //     printf("\n\n");      
                //     printf("Proc :%d\n", number);
                //     printf("Is green = %d\n", statuses[number-1]);
                //     printf("Cars? %d\n", queue[number-1]);
                //     printf("Request: %d\n", requests[number]);
                // }

                if
                    :: statuses[number-1] == true ->
                           requests [number] =0; 
                           statuses[number-1] = false;
                           printf ("Set color as red at %d\n", number);
                           printf("And now its request is: %d\n", requests[number]);
                    :: else -> skip;
                fi;
                
                if
                :: requests[number] > 0  ->
                        if
                        :: (requests[fProblem] == 0  ) && 
                            (requests[sProblem] == 0 ) && 
                            (requests[tProblem] == 0  ) &&
                            (requests[uProblem] == 0  ) &&
                            (requests[oProblem] == 0  )
                            ->
                                statuses[number-1] = true;
                                queue[number-1] = 0;
                                printf ("Set color as green (no enemies) at %d\n", number);
                                currentTurn = nextNum

                        :: else ->
                                if // Первый соперник
                                    :: requests[fProblem] > 0 -> fValue = requests[fProblem];
                                    :: else -> fValue = 0;
                                fi;
                                if // Второй соперник
                                    :: requests[sProblem] >0 -> sValue = requests[sProblem];
                                    :: else -> sValue = 0;
                                fi;
                                if // Третий соперник
                                    :: requests[tProblem] >0 -> tValue = requests[tProblem];
                                    :: else -> tValue = 0;
                                fi
                                if // 4 соперник
                                    :: requests[uProblem] >0 -> uValue = requests[uProblem];
                                    :: else -> uValue = 0;
                                fi
                                if // 5 соперник
                                    :: requests[oProblem] >0 -> oValue = requests[oProblem];
                                    :: else -> oValue = 0;
                                fi

                                nValue = requests[number];

                                // atomic {
                                //     printf("(%d) enemies are: %d,%d,%d,%d,%d\n", number, fProblem, sProblem, tProblem, uProblem, oProblem);
                                //     printf("And values for #%d : (%d) and for enemies are: %d,%d,%d,%d,%d\n", number, nValue, fValue, sValue, tValue, uValue, oValue);
                                // }

                                if 
                                            :: fValue > nValue || sValue > nValue || tValue > nValue ->
                                                    requests[number] =  nValue + n; 
                                                    requests[fProblem] = fValue + n;
                                                    requests[sProblem] = sValue + n;
                                                    requests[tProblem] = tValue + n;
                                                    requests[uProblem] = uValue + n;
                                                    requests[oProblem] = oValue + n;
                                                    
                                                    printf ("(%d) will wait for enemies \n", number);
                                                    printf("(%d) new value is (%d) and for enemies: %d,%d,%d,%d,%d\n",  number, requests[number], requests[fProblem], requests[sProblem], requests[tProblem], requests[uProblem], requests[oProblem]);
                                                    skip
                                            :: else ->
                                                 printf ("Set color as green as (%d) was MAX \n", number);
                                                 statuses[number-1] = true;
                                                 queue[number-1] = 0;
                                                 requests[number] = 999 + number

                                 fi;
                        // atomic {
                        //     printf("Requests are 1 (%d), 2 (%d), 3 (%d), 4 (%d), 5 (%d), 6 (%d)\n", requests[1],requests[2],requests[3],requests[4],requests[5],requests[6]);
                        //     printf("Statuses are 1 (%d), 2 (%d), 3 (%d), 4 (%d), 5 (%d), 6 (%d)\n", statuses[0],statuses[1],statuses[2],statuses[3],statuses[4],statuses[5]);
                        //     printf("Cars waiting at 1 (%d), 2 (%d), 3 (%d), 4 (%d), 5 (%d), 6 (%d)\n", queue[0],queue[1],queue[2],queue[3],queue[4],queue[5]);
                        // }
                        currentTurn = nextNum;
                        requests[0] = 0;
                        fi
                :: else ->
                        requests[number] = number;
                        currentTurn = nextNum;
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
