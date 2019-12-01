
#include <iostream>

#include "Sequence.h"

using namespace abstract;
using namespace std;

const int n = 1000000;

int main() {
 
    // vector allocation on the stack
    // std::vector<int> vec(n);
    Sequence<int> s(n);

    // vector initialization as a monotonic increasing sequence
    // for (std::size_t i=0; i<n; i++) {
    //     vec.push_back(i);
    // }
    s = MonotonicSequence<int>(0,n,[] (int i) { return i+1; });

    // vector transformation (increment every element by 1)
    // for (std::size_t i=0; i<n; i++) {
    //     vec[i]++;
    // }
    s.map([] (int i) { return i+1; });

    // vector printing
    // for (std::size_t i=0; i<n; i++) {
    //     std::cout << vec[i];
    // }
    s.print(cout);

    return 0;
}
