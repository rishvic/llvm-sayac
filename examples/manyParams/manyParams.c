const int OFFSET = 20;

int offSum(int A, int B, int C, int D, int E, int F) {
  return A + B + C + D + E + F + OFFSET;
}

int main(void) {
  int P = -3, Q = 7, R = -10, S = -10, T = -4, U = 0;
  int Sum = offSum(P, Q, R, S, T, U);

  return Sum;
}
