#define N 5

mtype = {fork};

chan forks[N] = [1] of {mtype};

// L is the index of this philosopher's left fork
// R is the index of this philosopher's right fork
proctype philosopher(int L; int R) {
    // fill in here according to the description on the slide
    // philosopher process
    do
    ::  // philosopher is hungry
        // philosopher picks up the left fork
        forks[L]?fork;
        printf("Philosopher %d picks up the left fork\n", _pid);
        // philosopher picks up the right fork
        forks[R]?fork;
        printf("Philosopher %d picks up the right fork\n", _pid);
        // philosopher is eating
        printf("Philosopher %d is eating\n", _pid);
        skip;

        // philosopher puts down the left fork
        forks[L]!fork;
        printf("Philosopher %d puts down the left fork\n", _pid);
        // philosopher puts down the right fork
        forks[R]!fork;
        printf("Philosopher %d puts down the right fork\n", _pid);
        skip;
    od;
    
}

init {
    atomic {
        // Call the following in a loop (it should work for any N, not just 5):
        // run philosopher(0, 1);
        // run philosopher(1, 2);
        // run philosopher(2, 3);
        // ...
        // run philosopher(N-1, 0);
        //
        // calling the philosopher processes in a loop
        int i;
        i = 0;
        do
        :: i < N -> run philosopher(i, (i + 1) % N);
                      i = i + 1;
        :: i == N -> break;             
        od;

        // Additionally, set up the table by putting a fork in each channel.
        i = 0;
        do
        :: i < N -> forks[i]!fork; // sending a message to forks that it has a fork
                      i = i + 1;
        :: i == N -> break;
        od;
    }
}
