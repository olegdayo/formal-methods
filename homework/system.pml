chan TL1 = [1] of {byte};
chan TL2 = [1] of {byte};
chan TL3 = [1] of {byte};
chan TL4 = [1] of {byte};
chan TL5 = [1] of {byte};
chan TL6 = [1] of {byte};

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
        :: currentTurn == number  ->
        if
        // Есть трафик для этого светофора
        :: tlChan ? temp ->
        
                requests[0] = 0; 
                queue[number-1] = temp; 
                printf("\nProc: %d;\n IsGreen: %d;\n CarsNumber: %d;\n Request: %d\n", number, statuses[number-1], queue[number-1], requests[number]);      

                if
                    :: statuses[number-1] == true ->
                           requests [number] =0; 
                           statuses[number-1] = false;
                           printf("Set color as red at %d\n", number);
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
                            (requests[oProblem] == 0  ) ->
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
                                printf("(%d) enemies are: %d, %d, %d, %d, %d\n And values for #%d: (%d) and for enemies are: %d, %d, %d, %d, %d\n", number, fProblem, sProblem, tProblem, uProblem, oProblem, number, nValue, fValue, sValue, tValue, uValue, oValue);
                                
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
                        printf("Requests are 1 (%d), 2 (%d), 3 (%d), 4 (%d), 5 (%d), 6 (%d)\n Statuses are 1 (%d), 2 (%d), 3 (%d), 4 (%d), 5 (%d), 6 (%d)\n Cars waiting at 1 (%d), 2 (%d), 3 (%d), 4 (%d), 5 (%d), 6 (%d)\n", requests[1], requests[2], requests[3], requests[4], requests[5], requests[6], statuses[0], statuses[1], statuses[2], statuses[3], statuses[4], statuses[5], queue[0], queue[1], queue[2], queue[3], queue[4], queue[5]);
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
        :: TL1 ! 1
        :: TL2 ! 1
        :: TL3 ! 1
        :: TL4 ! 1
        :: TL5 ! 1
        :: TL6 ! 1
    od
}


init {
    /* 1: S→N conflicts: E→W(3), E→S(4), N→E(5) */
    run TrafficLight(1, 2, 3, 4, 5, 0, 0, TL1);

    /* 2: W→N conflicts: E→W(3), N→E(5) */
    run TrafficLight(2, 3, 3, 5, 0, 0, 0, TL2);

    /* 3: E→W conflicts: S→N(1), W→N(2), N→E(5), Ped(6) */
    run TrafficLight(3, 4, 1, 2, 5, 6, 0, TL3);

    /* 4: E→S conflicts: Ped(6), S→N(1), N→E(5) */
    run TrafficLight(4, 5, 6, 1, 5, 0, 0, TL4);

    /* 5: N→E conflicts: E→W(3), W→N(2), E→S(4), S→N(1), Ped(6) */
    run TrafficLight(5, 6, 3, 2, 4, 1, 6, TL5);

    /* 6: Pedestrian conflicts: E→W(3), E→S(4), N→E(5) */
    run TrafficLight(6, 1, 3, 4, 5, 0, 0, TL6);

    run TrafficGenerator();
}

ltl s1 { [] !(statuses[0] && (statuses[2] || statuses[3] || statuses[4])) }  /* 1 vs {3,4,5} */
ltl s2 { [] !(statuses[1] && (statuses[2] || statuses[4]))               }  /* 2 vs {3,5} */
ltl s3 { [] !(statuses[2] && (statuses[0] || statuses[1] || statuses[4] || statuses[5])) }  /* 3 vs {1,2,5,6} */
ltl s4 { [] !(statuses[3] && (statuses[5] || statuses[0] || statuses[4])) }  /* 4 vs {6,1,5} */
ltl s5 { [] !(statuses[4] && (statuses[2] || statuses[1] || statuses[3] || statuses[0] || statuses[5])) }  /* 5 vs {3,2,4,1,6} */
ltl s6 { [] !(statuses[5] && (statuses[2] || statuses[3] || statuses[4])) }  /* 6 vs {3,4,5} */

/* Liveness: если машина стоит в очереди и сигнал красный, то рано или поздно станет зелёным */
ltl l1 { [] ((queue[0]==1 && !statuses[0]) -> <> statuses[0]) }
ltl l2 { [] ((queue[1]==1 && !statuses[1]) -> <> statuses[1]) }
ltl l3 { [] ((queue[2]==1 && !statuses[2]) -> <> statuses[2]) }
ltl l4 { [] ((queue[3]==1 && !statuses[3]) -> <> statuses[3]) }
ltl l5 { [] ((queue[4]==1 && !statuses[4]) -> <> statuses[4]) }
ltl l6 { [] ((queue[5]==1 && !statuses[5]) -> <> statuses[5]) }

/* Fairness: каждый поток рано или поздно получит красный */
ltl f1 { [] <> !statuses[0] }
ltl f2 { [] <> !statuses[1] }
ltl f3 { [] <> !statuses[2] }
ltl f4 { [] <> !statuses[3] }
ltl f5 { [] <> !statuses[4] }
ltl f6 { [] <> !statuses[5] }
