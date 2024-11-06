active [8] proctype user() {
again:
  printf("Enter critical\n");
critical:
  printf("Exit critical\n");
  goto again
}

ltl ok { [] !(user[0]@critical && user[1]@critical && user[2]@critical && user[3]@critical && user[4]@critical && user[5]@critical && user[6]@critical && user[7]@critical) }