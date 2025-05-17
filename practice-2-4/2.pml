#define N          3
#define SIZE       (2*N + 1)
#define GREEN      1
#define PURPLE     2

byte pad[SIZE] = {GREEN, GREEN, GREEN, 0, PURPLE, PURPLE, PURPLE};
byte moves = 0;
bool exchanged = false;

proctype bruh() {
    do
      :: (pad[0]==PURPLE && pad[1]==PURPLE && pad[2]==PURPLE && pad[3]==0 && pad[4]==GREEN && pad[5]==GREEN && pad[6]==GREEN) -> exchanged = true; break
      :: else ->
        byte i;
        select(i:0..(SIZE-1));
        printf("I: %d\n", i);
        if
          :: pad[i] != 0 ->
            if
                :: (i>0 && pad[i-1] == 0) -> pad[i-1]=pad[i]; pad[i]=0; moves++;
                :: (i>1 && pad[i-1] != 0 && pad[i-2] == 0) -> pad[i-2]=pad[i]; pad[i]=0; moves++;
                :: else -> skip
            fi
            if
              :: (i<SIZE-1 && pad[i+1] == 0) -> pad[i+1]=pad[i]; pad[i]=0; moves++;
              :: (i<SIZE-2 && pad[i+1] != 0 && pad[i+2] == 0) -> pad[i+2]=pad[i]; pad[i]=0; moves++;
              :: else -> skip
            fi
          :: else -> skip
        fi;
    od
    printf("Moves: %d\n", moves);
}

init {
    run bruh();
}

ltl exchanged { [] !exchanged };
