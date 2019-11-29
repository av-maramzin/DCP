
#include <iostream>

#include "Sequence.h"

using namespace abstract;
using namespace std;

const int n = 1000000;

int main() {
    
    // array allocation on the stack
    // int array[n];
    Sequence<int> s(n); 

    // array initialization as a monotonic increasing sequence
    // for (int i=0; i<n; i++) {
    //     array[i] = i;
    // }
    s = MonotonicSequence<int>(0,n,[] (int i) { return i+1; });

    // array transformation (increment every element by 1)
    // for (int i=0; i<n; i++) {
    //     array[i]++;
    // }
    s.map([] (int i) { return i+1; });

    // array printing
    // for (int i=0; i<n; i++) {
    //     printf("%d", array[i]);
    // }
    s.print(cout);

    return 0;
}
