
#include <list>
#include <iostream>

int main() {
    
    std::list<int> l(5, 1.0);

    int result = 0;
    for (auto it = l.rbegin(); it != l.rend(); it++) {
        *it += result;
        result = *it;
    }
    
    std::cout << result << std::endl; 

    return 0;
}
