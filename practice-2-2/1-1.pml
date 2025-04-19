chan ch = [0] of {byte}

bool got_z = false;

proctype Sender() {
    byte c;

    for (c : 'a'..'z') {
        ch ! c;
    }
}

proctype Receiver() {
    byte c;

    do
        :: ch ? c ->
            printf("%c\n", c);
            if
                :: c == 'z' -> got_z = true; break;
                :: else -> skip;
            fi
    od

    assert(got_z);
}

init {
    run Sender();
    run Receiver();
}

ltl reachedZ { <> got_z}
