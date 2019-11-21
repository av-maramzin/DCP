#include <stdio.h>

const int n = 1000000;

int main() {
    
    // array allocation on the stack
    int array[n];

    // array initialization as a monotonic increasing sequence  
    for (int i=0; i<n; i++) {
        array[i] = i;
    }

    // array transformation (increment every element by 1)
    for (int i=0; i<n; i++) {
        array[i]++;
    }

    // array printing
    for (int i=0; i<n; i++) {
        printf("%d", array[i]);
    }

    return 0;
}
