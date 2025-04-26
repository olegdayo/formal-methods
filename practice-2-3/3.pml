#define N 5               
#define L(i) ((i + N - 1) % N)
#define R(i) ((i + 1) % N)
#define gate_open (pillar[0] && pillar[1] && pillar[2] && pillar[3] && pillar[4])

bool pillar[N] = { 0, 1, 0, 1, 1 };

byte steps = 0;          

inline flip(idx) {
    pillar[idx] = !pillar[idx];
}

inline command(i) {
    flip(i);
    flip(L(i));
    flip(R(i));
    steps++
}

active proctype Commander()
{
    do
    :: atomic {
         byte i;
         if
            :: i = 0
            :: i = 1
            :: i = 2
            :: i = 3
            :: i = 4
         fi;
         command(i)
       }
    od
}

ltl open { [] (!gate_open) }
