// program to multiply two matrices

int main(void) {
  
    int mat1[2][2];
    mat1[0][0] = 9;
    mat1[0][1] = 3;
    mat1[1][0] = 7;
    mat1[1][1] = 5;

	int mat2[2][3];
    mat2[0][0] = 9;
    mat2[0][1] = 11;
    mat2[0][2] = 13;
    mat2[1][0] = 15;
    mat2[1][1] = 7;
    mat2[1][2] = 19;
    
    int rslt[2][3]; 

    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 3; j++) {
            rslt[i][j] = 0;
  
            for (int k = 0; k < 2; k++) {
                rslt[i][j] += mat1[i][k] * mat2[k][j];
            }
        }
     
    }

	
    return 0;
}
