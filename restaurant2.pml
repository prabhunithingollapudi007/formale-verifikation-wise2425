mtype = { C, D, N };
mtype turn = C;

active [2] proctype chef() {
	do
	:: atomic { (turn == C) -> turn = N };
		printf("Cooked some delicious pasta!\n");
		turn = D
	:: atomic { (turn == C) -> turn = N };
		printf("Cooked some delicious rice bowl!\n");
		turn = D
	od
}

active [2] proctype diner() {
	do
	:: atomic { (turn == D) -> turn = N };
		printf("Ate the meal!\n");
		turn = C
	:: (turn == N) -> printf("Twiddle thumbs.\n")
	od
}
