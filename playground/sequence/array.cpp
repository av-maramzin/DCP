#include <cstdlib>
#include <cstdio>

const unsigned int n = 100;

int main() {
    int array[n];

    // array creation
    for (int i=0; i<n; i++) {
        array[i] = 0;
    }

    // array traversal
    for (int i=0; i<n; i++) {
        array[i]++;
    }

    // array disposal
    for (int i=0; i<n; i++) {
        printf("%d", array[i]);
    }
   
    return 0;
}
