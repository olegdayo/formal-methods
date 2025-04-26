byte to_be_or_not_to_be[26] = {'t', 'o', 'b', 'e', 'o', 'r', 'n', 'o', 't', 't', 'o', 'b', 'e'};

chan ch = [0] of {byte};

bool got_to_be = false;

proctype Monkey(byte c) {
    do
        :: got_to_be -> break;
        :: else -> ch ! c;
    od
}

proctype Reviewer() {
    byte c;

    do
        :: ch ? c ->
            printf("%c\n", c);
            if
                :: c == 'z' -> got_to_be = true; break;
                :: else -> skip;
            fi
    od
}

init {
    byte c;
    for (c : 'a'..'z') {
        run Monkey(c);
    }
    run Reviewer();
}

ltl to_be { got_to_be };
