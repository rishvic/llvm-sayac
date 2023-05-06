
void swap_num(int *a, int *b) {
  int temp = *a;
  *a = *b;
  *b = temp;
}

int main() {
    int a = 43, b = 34;
    swap_num(&a, &b);
    
    return 0;
}