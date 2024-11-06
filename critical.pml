active [2] proctype user() {
again:
  printf("Enter critical\n");
critical:
  printf("Exit critical\n");
  goto again
}

ltl ok { [] !(user[0]@critical && user[1]@critical) }