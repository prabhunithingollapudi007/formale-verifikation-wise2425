bool A1, A2, A3, G1, G2, G3, boat;

init {
    do
    :: ((boat == A1) && (boat == A2)) -> d_step {boat = !boat; A1 = !A1; A2 = !A2; printf("A1 and A2 cross the river\n");}
    :: ((boat == A1) && (boat == A3)) -> d_step {boat = !boat; A1 = !A1; A3 = !A3; printf("A1 and A3 cross the river\n");}
    :: ((boat == A1) && (boat == G1)) -> d_step {boat = !boat; A1 = !A1; G1 = !G1; printf("A1 and G1 cross the river\n");}
    :: ((boat == A1) && (boat == G2)) -> d_step {boat = !boat; A1 = !A1; G2 = !G2; printf("A1 and G2 cross the river\n");}
    :: ((boat == A1) && (boat == G3)) -> d_step {boat = !boat; A1 = !A1; G3 = !G3; printf("A1 and G3 cross the river\n");}
    :: ((boat == A2) && (boat == A3)) -> d_step {boat = !boat; A2 = !A2; A3 = !A3; printf("A2 and A3 cross the river\n");}
    :: ((boat == A2) && (boat == G1)) -> d_step {boat = !boat; A2 = !A2; G1 = !G1; printf("A2 and G1 cross the river\n");}
    :: ((boat == A2) && (boat == G2)) -> d_step {boat = !boat; A2 = !A2; G2 = !G2; printf("A2 and G2 cross the river\n");}
    :: ((boat == A2) && (boat == G3)) -> d_step {boat = !boat; A2 = !A2; G3 = !G3; printf("A2 and G3 cross the river\n");}
    :: ((boat == A3) && (boat == G1)) -> d_step {boat = !boat; A3 = !A3; G1 = !G1; printf("A3 and G1 cross the river\n");}
    :: ((boat == A3) && (boat == G2)) -> d_step {boat = !boat; A3 = !A3; G2 = !G2; printf("A3 and G2 cross the river\n");}
    :: ((boat == A3) && (boat == G3)) -> d_step {boat = !boat; A3 = !A3; G3 = !G3; printf("A3 and G3 cross the river\n");}
    :: ((boat == G1) && (boat == G2)) -> d_step {boat = !boat; G1 = !G1; G2 = !G2; printf("G1 and G2 cross the river\n");}
    :: ((boat == G1) && (boat == G3)) -> d_step {boat = !boat; G1 = !G1; G3 = !G3; printf("G1 and G3 cross the river\n");}
    :: ((boat == G2) && (boat == G3)) -> d_step {boat = !boat; G2 = !G2; G3 = !G3; printf("G2 and G3 cross the river\n");}
    :: (boat == A1) -> d_step {boat = !boat; A1 = !A1; printf("A1 crosses the river\n");}
    :: (boat == A2) -> d_step {boat = !boat; A2 = !A2; printf("A2 crosses the river\n");}
    :: (boat == A3) -> d_step {boat = !boat; A3 = !A3; printf("A3 crosses the river\n");}
    :: (boat == G1) -> d_step {boat = !boat; G1 = !G1; printf("G1 crosses the river\n");}
    :: (boat == G2) -> d_step {boat = !boat; G2 = !G2; printf("G2 crosses the river\n");}
    :: (boat == G3) -> d_step {boat = !boat; G3 = !G3; printf("G3 crosses the river\n");}
    od
}

#define all_crossed (A1 && A2 && A3 && G1 && G2 && G3)
#define A1_poached (A1 != G1) && ((A1 == G2 || A1 == G3))
#define A2_poached (A2 != G2) && ((A2 == G1 || A2 == G3))
#define A3_poached (A3 != G3) && ((A3 == G1 || A3 == G2))

ltl ok { 
    !((!(A1_poached || A2_poached || A3_poached)) U all_crossed)
}