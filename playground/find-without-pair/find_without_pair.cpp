#include <cstdlib>
#include <vector>
#include <iostream>

const int N = 10;

std::vector<int> find_without_pair(const std::vector<int>& vec) {
    
    std::vector<int> ret;
    std::unordered_set<int> test;

    for (unsigned int i = 0; i < vec.size(); i++) {
        bool has_pair = false; 
        int elem = vec[i];

        if test

        for (unsigned int j = 0; j < vec.size(); j++) {
            if ((i != j) && (elem == vec[j]))  {
                has_pair = true;
                break;
            }
        }
        if (!has_pair) {
            ret.push_back(elem);
        }
    }

    return ret;
}

int main() {

    std::vector<int> array(N);

    for (unsigned int i = 0; i < N; i++) {
        array[i] = std::rand() % 10;
    }    

    for (unsigned int i = 0; i < array.size(); i++) {
        std::cout << array[i] << " ";
    }
   
    std::cout << std::endl << std::endl << std::endl;

    std::vector<int> ret = find_without_pair(array);
    
    for (unsigned int i = 0; i < ret.size(); i++) {
        std::cout << ret[i] << " ";
    }
   
    return 0;
}
