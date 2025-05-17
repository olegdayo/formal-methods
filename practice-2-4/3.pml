#define NFLOORS 5

byte pos = 0;              
bool door[NFLOORS];         
bool call[NFLOORS];         
bool up   = true;          
bool to4  = false;          

#define DOOR_SAFE  ((!door[0] || pos==0) && \
                    (!door[1] || pos==1) && \
                    (!door[2] || pos==2) && \
                    (!door[3] || pos==3) && \
                    (!door[4] || pos==4))

#define NO_CALLS   (!call[0] && !call[1] && !call[2] && !call[3] && !call[4])

ltl p1 { [] DOOR_SAFE }

ltl p2 { [] ((call[0] -> <> !call[0]) &&
             (call[1] -> <> !call[1]) &&
             (call[2] -> <> !call[2]) &&
             (call[3] -> <> !call[3]) &&
             (call[4] -> <> !call[4])) }

ltl p3 { [] <> (pos == 0) }

ltl p4 { [] (call[4] -> ((!door[0] && !door[1] && !door[2] && !door[3]) U !call[4])) }

inline service(f)
{
    door[f] = true;
    call[f] = false;
    d_step { door[f] = false }
}

proctype Users()
{
    do
    :: atomic {
           if
           :: NO_CALLS && pos == 0 ->            
                 if
                 :: call[0] = true
                 :: call[1] = true
                 :: call[2] = true
                 :: call[3] = true
                 :: call[4] = true
                 fi
           :: else -> skip
           fi
       }

    :: atomic {                                  /* лампа гаснет, когда дверь открылась */
           if
           :: door[0] -> call[0] = false
           :: door[1] -> call[1] = false
           :: door[2] -> call[2] = false
           :: door[3] -> call[3] = false
           :: door[4] -> call[4] = false
           fi
       }
    od
}

proctype Controller()
{
    do
    :: call[4] && pos < 4 ->

         d_step {
             pos = 4;
             service(4);
         };
         up = false        /* после обслуживания движемся вниз */

    :: !to4 && call[pos] && !call[4] -> /* не останавливаемся, если уже 4 */
         service(pos)

    :: !to4 && up ->
         if
         :: pos < 4 -> pos++
         :: else -> up = false      /* разворот на верху */
         fi

    :: !to4 && !up ->
         if
         :: pos > 0 -> pos--
         :: else -> up = true       /* разворот на нуле */
         fi
    od
}

init {
    atomic {
        byte i = 0;
        do
        :: i < NFLOORS -> { door[i] = false; call[i] = false; i++ }
        :: else -> break
        od
    }
    run Controller();
    run Users();
}
