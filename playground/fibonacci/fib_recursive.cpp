
#include <iostream>

unsigned int fibonacci(unsigned int num) {
    if (num == 0) return 0;
    if (num == 1) return 1;
    return fibonacci(num-1) + fibonacci(num-2);
}

int main() {
   
    int n;

    std::cin >> n;
    std::cout << fibonacci(n) << std::endl;

    return 0;
}
