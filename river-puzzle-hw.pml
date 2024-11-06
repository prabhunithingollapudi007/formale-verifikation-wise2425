// This code is submitted by
// Name: Prabhu Nithin Gollapudi
// ec25opos
// 23269243

bool first_actor=false, second_actor=false, third_actor=false, first_agent=false, second_agent=false, third_agent=false, boat=false;
int trip_number = 1;
// initially all actors and agents are on the left side of the river and boat is on the left side

init {
    do
    // give all possible combinations of actors and agents crossing the river

    :: ((boat == first_actor) && (boat == second_actor)) -> d_step {boat = !boat; first_actor = !first_actor; second_actor = !second_actor; printf("first_actor and second_actor cross the river in trip %d\n", trip_number); trip_number++;}
    :: ((boat == first_actor) && (boat == third_actor)) -> d_step {boat = !boat; first_actor = !first_actor; third_actor = !third_actor; printf("first_actor and third_actor cross the river in trip %d\n", trip_number); trip_number++;}
    :: ((boat == first_actor) && (boat == first_agent)) -> d_step {boat = !boat; first_actor = !first_actor; first_agent = !first_agent; printf("first_actor and first_agent cross the river in trip %d\n", trip_number); trip_number++;}
    :: ((boat == first_actor) && (boat == second_agent)) -> d_step {boat = !boat; first_actor = !first_actor; second_agent = !second_agent; printf("first_actor and second_agent cross the river in trip %d\n", trip_number); trip_number++;}
    :: ((boat == first_actor) && (boat == third_agent)) -> d_step {boat = !boat; first_actor = !first_actor; third_agent = !third_agent; printf("first_actor and third_agent cross the river in trip %d\n", trip_number); trip_number++;}
    :: ((boat == second_actor) && (boat == third_actor)) -> d_step {boat = !boat; second_actor = !second_actor; third_actor = !third_actor; printf("second_actor and third_actor cross the river in trip %d\n", trip_number); trip_number++;}
    :: ((boat == second_actor) && (boat == first_agent)) -> d_step {boat = !boat; second_actor = !second_actor; first_agent = !first_agent; printf("second_actor and first_agent cross the river in trip %d\n", trip_number); trip_number++;}
    :: ((boat == second_actor) && (boat == second_agent)) -> d_step {boat = !boat; second_actor = !second_actor; second_agent = !second_agent; printf("second_actor and second_agent cross the river in trip %d\n", trip_number); trip_number++;}
    :: ((boat == second_actor) && (boat == third_agent)) -> d_step {boat = !boat; second_actor = !second_actor; third_agent = !third_agent; printf("second_actor and third_agent cross the river in trip %d\n", trip_number); trip_number++;}
    :: ((boat == third_actor) && (boat == first_agent)) -> d_step {boat = !boat; third_actor = !third_actor; first_agent = !first_agent; printf("third_actor and first_agent cross the river in trip %d\n", trip_number); trip_number++;}
    :: ((boat == third_actor) && (boat == second_agent)) -> d_step {boat = !boat; third_actor = !third_actor; second_agent = !second_agent; printf("third_actor and second_agent cross the river in trip %d\n", trip_number); trip_number++;}
    :: ((boat == third_actor) && (boat == third_agent)) -> d_step {boat = !boat; third_actor = !third_actor; third_agent = !third_agent; printf("third_actor and third_agent cross the river in trip %d\n", trip_number); trip_number++;}
    :: ((boat == first_agent) && (boat == second_agent)) -> d_step {boat = !boat; first_agent = !first_agent; second_agent = !second_agent; printf("first_agent and second_agent cross the river in trip %d\n", trip_number); trip_number++;}
    :: ((boat == first_agent) && (boat == third_agent)) -> d_step {boat = !boat; first_agent = !first_agent; third_agent = !third_agent; printf("first_agent and third_agent cross the river in trip %d\n", trip_number); trip_number++;}
    :: ((boat == second_agent) && (boat == third_agent)) -> d_step {boat = !boat; second_agent = !second_agent; third_agent = !third_agent; printf("second_agent and third_agent cross the river in trip %d\n", trip_number); trip_number++;}
    :: (boat == first_actor) -> d_step {boat = !boat; first_actor = !first_actor; printf("first_actor crosses the river in trip %d\n", trip_number); trip_number++;}
    :: (boat == second_actor) -> d_step {boat = !boat; second_actor = !second_actor; printf("second_actor crosses the rive in trip %d\n", trip_number); trip_number++;}
    :: (boat == third_actor) -> d_step {boat = !boat; third_actor = !third_actor; printf("third_actor crosses the river in trip %d\n", trip_number); trip_number++;}
    :: (boat == first_agent) -> d_step {boat = !boat; first_agent = !first_agent; printf("first_agent crosses the river in trip %d\n", trip_number); trip_number++;}
    :: (boat == second_agent) -> d_step {boat = !boat; second_agent = !second_agent; printf("second_agent crosses the river in trip %d\n", trip_number); trip_number++;}
    :: (boat == third_agent) -> d_step {boat = !boat; third_agent = !third_agent; printf("third_agent crosses the river in trip %d\n", trip_number); trip_number++;}
    od
}

// give the flags for the constraints

#define ALL_ACTORS_AGENTS_CROSSED (first_actor && second_actor && third_actor && first_agent && second_agent && third_agent)
#define FIRST_ACTOR_UNSAFE ((first_actor != first_agent) && (first_actor == second_agent || first_actor == third_agent))
#define SECOND_ACTOR_UNSAFE ((second_actor != second_agent) && (second_actor == first_agent || second_actor == third_agent))
#define THIRD_ACTOR_UNSAFE ((third_actor != third_agent) && (third_actor == first_agent || third_actor == second_agent))


// ltl formula for the constraint satisfaction

// give me not the case where all actors and agents have crossed the river and any of the actors is unsafe

ltl ok { 
    !((!(FIRST_ACTOR_UNSAFE || SECOND_ACTOR_UNSAFE || THIRD_ACTOR_UNSAFE)) U ALL_ACTORS_AGENTS_CROSSED)
}

// run this using the commands: 
// spin -a river-puzzle-hw.pml 
// gcc -DBFS pan.c -o pan
// ./pan -i
// spin -t .\river-puzzle-hw.pml

// The output is a sequence of steps which can be read off in trial file. The output is as follows:

// first_actor and second_actor cross the river in trip 1
// first_actor crosses the river in trip 2
// first_actor and third_actor cross the river in trip 3
// first_actor crosses the river in trip 4
// second_agent and third_agent cross the river in trip 5
// second_actor and second_agent cross the river in trip 6
// first_agent and second_agent cross the river in trip 7
// third_actor crosses the river in trip 8
// first_actor and second_actor cross the river in trip 9
// first_actor crosses the river in trip 10
// first_actor and third_actor cross the river in trip 11