#include <vector>

struct Node {
    unsigned int size;
    int* elements;
};

int main() {

    std::vector<int> vec(10);
    
    struct Vector v;

    v.size = 10;
    v.elements = new int[v.size];
}
