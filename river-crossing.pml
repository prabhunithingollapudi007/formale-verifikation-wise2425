bool ferryman = false;
bool goat = false;
bool cabbage = false;
bool wolf = false;
mtype {g, c, w, none}; // Enumeration for carry states
mtype carry = none;

init {
    do
    :: ferryman = !ferryman; // Ferryman attempts to cross the river
    

        if
        :: ferryman == goat -> printf("Ferryman carries goat\n");
        :: ferryman == cabbage -> printf("Ferryman carries cabbage\n");
        :: ferryman == wolf -> printf("Ferryman carries wolf\n");
        :: else -> skip;
        fi;

        // Carrying logic for the ferryman
        if
        :: carry == none && ferryman == goat -> carry = g; printf("Ferryman carries goat\n");
        :: carry == none && ferryman == cabbage -> carry = c; printf("Ferryman carries cabbage\n");
        :: carry == none && ferryman == wolf -> carry = w; printf("Ferryman carries wolf\n");
        :: else -> skip;
        fi;
        
        // Update positions based on what is carried
        if
        :: carry == g && ferryman -> goat = ferryman; printf("Goat is on the other side\n"); carry = none;
        :: carry == c && ferryman -> cabbage = ferryman; printf("Cabbage is on the other side\n"); carry = none;
        :: carry == w && ferryman -> wolf = ferryman; printf("Wolf is on the other side\n"); carry = none;
        :: else -> skip;
        fi;

        // Check safety conditions (no goat with cabbage or wolf alone)
        if
        :: (goat == cabbage && goat != ferryman) -> printf("Unsafe! Goat alone with cabbage\n"); break;
        :: (goat == wolf && goat != ferryman) -> printf("Unsafe! Goat alone with wolf\n"); break;
        :: else -> skip;
        fi;
        
        // Check if all items are on the other side
        if
        :: ferryman && goat && cabbage && wolf -> printf("All items have crossed safely.\n"); break;
        :: else -> skip;
        fi;
        
    od;
}



// LTL Specification for safety
ltl ok { 
     !(!( (goat == cabbage && ferryman != goat) && (goat == wolf && ferryman != goat) ) U (ferryman && goat && cabbage && wolf)) 
}