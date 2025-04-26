#define L 13
byte target[L] = {'t', 'o', 'b', 'e', 'o', 'r', 'n', 'o', 't', 't', 'o', 'b', 'e'};

bool matched = false;
byte pos;
chan ch = [0] of { byte }; 

proctype Monkey(byte c) {
    do
        :: matched        -> break;
        :: !matched       -> ch ! c;
    od
}

proctype Reviewer() {
    byte recv;
    pos = 0;

    do
        :: ch ? recv -> 
            printf("Received: %c\n", recv);
            if
                :: recv == target[pos] -> 
                    pos++;
                    if
                        :: pos == L -> 
                            matched = true;
                            break
                        :: else -> skip
                    fi
                :: else ->
                    pos = 0;
                    if
                        :: recv == target[0] -> pos = 1
                        :: else -> skip
                    fi
            fi
    od
}

init {
    atomic {
        byte c;

        for (c: 'a'..'z') {
            run Monkey(c);
        }

        run Reviewer();
    }
}

ltl to_be { [] (matched == false) }
