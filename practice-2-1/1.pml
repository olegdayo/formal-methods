proctype first(byte index; byte a; byte b) {
    if
        :: (a < b) -> printf("First test-%d: good\n", index);
    fi
}

proctype second(byte index; byte a; byte b) {
    if
        :: (a < b) -> printf("Second test-%d: good\n", index);
        :: else -> printf("Second test-%d: bad\n", index);
    fi
}

proctype third(byte index; byte a; byte b; byte c) {
    if
        :: (b > c) -> a = b;
        :: else -> a = c;
    fi
    printf("Third test-%d: a=%d\n", index, a);
}

proctype forth(byte index; byte a; byte b) {
    do
        :: (a < b) -> break;
        :: else -> a++;
    od
    printf("Forth test-%d: a=%d\n", index, a);
}

proctype fifth(byte index) {
    byte i;
    for (i: 0..99) {
        printf("Fifth test-%d: i=%d\n", index, i)
    }
}

init {
    run first(0, 0, 1);

    run second(0, 0, 0);
    run second(1, 0, 1);
    run second(2, 1, 0);

    run third(0, 3, 1, 0);
    run third(1, 3, 0, 2);

    run forth(0, 1, 5);

    run fifth(0);
}
