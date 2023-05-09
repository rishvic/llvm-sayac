// C program to implement iterative Binary Search

// A iterative binary search function. It returns
// location of x in given array arr[l..r] if present,
// otherwise -1
int binarySearch(int arr[], int l, int r, int x)
{
	while (l <= r) {
		int m = l + (r - l) / 2;

		if (arr[m] == x) return m;

		
		if (arr[m] < x)
			l = m + 1;
		else
			r = m - 1;
	}

	return -1;
}

int main(void)
{
    int n = 5;
	int arr[5] ;
    arr[0] = 3; arr[1] = 5; arr[2] = 13; arr[3] = 23; arr[4] = 41;
	int x = 23;
	int result = binarySearch(arr, 0, n - 1, x);
	
	return 0;
}
