#include <stdio.h>

const int n = 1000000;

int main() {
    int array[n];

    // array initialization as a monotonic increasing sequence  
    for (int i=0; i<n; i++) {
        array[i] = i;
    }

    // array transformation
    for (int i=0; i<n; i++) {
        array[i]++;
    }

    // array printing
    for (int i=0; i<n; i++) {
        printf("%d", array[i]);
    }

    return 0;
}
