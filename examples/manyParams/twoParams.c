const int OFFSET = 20;

int offSum(int A, int B) { return A + B + OFFSET; }

int main(void) {
  int P = -3, Q = 7;
  int Sum = offSum(P, Q);

  return Sum;
}
