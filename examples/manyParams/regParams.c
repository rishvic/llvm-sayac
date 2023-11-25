const int OFFSET = 20;

int offSum(int A, int B, int C, int D, int E) {
  return A + B + C + D + E + OFFSET;
}

int main(void) {
  int P = -3, Q = 7, R = -10, S = -10, T = -4;
  int Sum = offSum(P, Q, R, S, T);

  return Sum;
}
