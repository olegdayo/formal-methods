#define N 6

proctype zero() {
    int a[N];
    int i;

    for (i : 0..(N-1) ) {
        a[i] = 3;
    }

    for (i : 0..(N-1) ) {
        printf("a[%d]=%d\n", i, a[i]);
    }
}

proctype first() {
    int a[N];
    int i;

    for (i : 0..(N-1) ) {
        if
            :: a[i] = 0;
            :: a[i] = 1;
            :: a[i] = 2;
            :: a[i] = 3;
            :: a[i] = 4;
            :: a[i] = 5;
        fi
    }

    for (i : 0..(N-1) ) {
        printf("a[%d]=%d\n", i, a[i]);
    }
}

proctype second() {
    int a[N];
    int i;

    for (i : 0..(N-1) ) {
        if
            :: a[i] = 0;
            :: a[i] = 1;
            :: a[i] = 2;
            :: a[i] = 3;
            :: a[i] = 4;
            :: a[i] = 5;
        fi
    }

    int sum;
    for (i : 0..(N-1) ) {
        if
            :: (i % 2 == 0) -> sum = sum + a[i];
            :: else -> sum = sum - a[i];
        fi
        printf("a[%d]=%d\n", i, a[i]);
    }

    printf("sum=%d\n", sum);
}

proctype third() {
    int a[N];
    int i;

    for (i : 0..(N-1) ) {
        if
            :: a[i] = 0;
            :: a[i] = 1;
            :: a[i] = 2;
            :: a[i] = 3;
            :: a[i] = 4;
            :: a[i] = 5;
        fi
    }

    for (i : 0..(N-1) ) {
        printf("a[%d]=%d\n", i, a[i]);
    }
}

init {
    run zero();
    run first();
    run second();
}
