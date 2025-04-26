int sum = 0;

chan ch = [0] of {int};

proctype producer() {
    do
        :: ch ! 1
        :: ch ! 2
        :: ch ! 3
    od
}

proctype consumer() {
    int i;

    do
        :: ch ? i ->
            printf("received %d\n", i);
            if
                :: sum > 0 -> sum = sum - i;
                :: else -> sum = sum + i;
            fi
    od
}

init {
    run producer();
    run consumer();
}

ltl always_zero { []<> (sum == 0) };
ltl always_in_three { [] (sum > -4 && sum < 4) };
ltl lol { [] (((sum > 0) -> <> (sum < 0)) && ((sum < 0) -> <> (sum > 0))) }; // fix: <=
