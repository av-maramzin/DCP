#include <vector>
#include <iostream>

const int n = 1000000;

int main() {
    
    // vector allocation on the stack
    std::vector<int> vec(n);

    // vector initialization as a monotonic increasing sequence
    for (std::size_t i=0; i<n; i++) {
        vec.push_back(i);
    }

    // vector transformation (increment every element by 1)
    for (std::size_t i=0; i<n; i++) {
        vec[i]++;
    }

    // vector printing
    for (std::size_t i=0; i<n; i++) {
        std::cout << vec[i];
    }

    return 0;
}
