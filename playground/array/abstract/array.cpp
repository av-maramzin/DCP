#include "Sequence.h"

const int n = 1000000;

int main() {
    
    Sequence<int> s(MonotonicSequence<int>(0,n));
    s.map([] (int i) { return i+1; });
    s.print();

    return 0;
}
