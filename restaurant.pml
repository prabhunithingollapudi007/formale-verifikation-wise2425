mtype = { C, D, N };
mtype turn = C;

active proctype chef() {
	do
	:: (turn == C) ->
		printf("Cooked some delicious pasta!\n");
		turn = D
	od
}

active proctype diner() {
	do
	:: (turn == D) ->
		printf("Ate the meal!\n");
		turn = C
	od
}
