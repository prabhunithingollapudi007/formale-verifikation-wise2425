bool farmer, goat, cabbage, wolf;

init {
    do 
    
    :: (true) -> farmer = !farmer;printf("Farmer crosses the river alone\n");
    :: (farmer == wolf) -> d_step {farmer = !farmer; wolf = !wolf; printf("Farmer crosses the river with wolf\n");}
    :: (farmer == goat) -> d_step {farmer = !farmer; goat = !goat; printf("Farmer crosses the river with goat\n");}
    :: (farmer == cabbage) -> d_step {farmer = !farmer; cabbage = !cabbage; printf("Farmer crosses the river with cabbage\n");}

    od
}

#define all_crossed (farmer && goat && cabbage && wolf)
#define eaten ((goat == cabbage) && (farmer != goat)) || ((goat == wolf) && (farmer != goat))

ltl ok { 
    ! ((!eaten) U (all_crossed))
}