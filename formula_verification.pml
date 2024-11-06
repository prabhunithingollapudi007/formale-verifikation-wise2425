mtype = { A1, A2, B };

chan c = [0] of { mtype };

active proctype Process() {
    do
    :: c!A1;     // Send action A1
    :: c!A2;     // Send action A2
    :: c!B;      // Send action B
    od
}

active proctype Environment() {
    mtype msg;
    do
    :: c?msg -> if
       :: msg == A1 -> printf("Received A1\n")
       :: msg == A2 -> printf("Received A2\n")
       :: msg == B -> printf("Received B\n")
       fi
    od
}

// LTL Properties
ltl p1 { []((c?A1 && c?A2) -> (c?B)) }  // LTL property for (a1 ∧ a2) U b
ltl p2 { []((c?A1 -> (c?B)) && (c?A2 -> (c?B))) }  // LTL property for (a1 U b) ∧ (a2 U b)