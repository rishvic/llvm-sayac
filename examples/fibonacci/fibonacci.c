// program to find fibonacci numbers upto n

void calFibonacciNum(int fib[], int n){
    fib[0] = 0;
    fib[1] = 1;

    for(int i=2; i<n; ++i){
        fib[i] = fib[i-1] + fib[i-2];
    }
}

int main(){
    int fib[10];
    calFibonacciNum(fib, 10);

    return 0;
}