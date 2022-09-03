void main() {}

int sum(int n) {
  //TODO: develop sum function that will calculate sum from n to 0
  // n = 5 -> 5+4+3+2+1
  // must be a recursion
  throw "NotImplementedException";
}

// A simple way to implement that task. can be used for comparing results
int sumSimple(int n) {
  int sum = 0;
  for (int i = 0; i <= n; i++) {
    sum += i;
  }
  return sum;
}
