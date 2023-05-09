//program to find greatest number from three numbers

int main(){
    int a = 19, b = 25, c = 23;
    int hi;

    if( a >= b && a >= c){
        hi = a;
    }
    else if( b>=a && b>= c){
        hi = b;
    }
    else hi = c;

    return 0;
}