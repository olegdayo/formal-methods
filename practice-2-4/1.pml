#define K 11
#define LEFT(x) ((x+K-1)%K)
#define RIGHT(x) ((x+1)%K)

int array[K];
byte one_index = 0;
bool found = false;
byte steps = 0;
byte chosen = 0;

proctype algorithm() {
    do
    :: found -> break;
    :: else -> 
        steps = steps + 1;
        select(chosen:0..(K-1));

        if
            :: array[chosen] == 1 -> found = true;
            :: else -> 
                byte temp_index = one_index;
                if
                    :: one_index = LEFT(one_index)
                    :: one_index = RIGHT(one_index)
                    :: else -> skip;
                fi
                array[one_index] = 1;
                array[temp_index] = 0;
        fi
    od

    byte i = 0;

    printf("index=%d\n", one_index);
    printf("chosen=%d\n", chosen);
    printf("steps=%d\n", steps);
    for (i : 0..(K-1)) {
        printf("%d=%d\n", i + 1, array[i]);
    }
}

init {
    select(one_index:0..(K-1));

    array[one_index] = 1;

    run algorithm();
}

ltl found { <> found }
