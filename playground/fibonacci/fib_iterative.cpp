
#include <iostream>

unsigned int fibonacci(unsigned int num) {

    static unsigned long long* memo = nullptr;
    static long long n_alloc = -1;

    if (n_alloc < num) {
        
        if (n_alloc == -1) {
            // nothing has been allocated yet
            
            // calculate new size
            long long n_realloc = 1;
            while (n_realloc < num) {
                n_realloc *=2;
            }

            // allocate
            unsigned long long* tmp = new unsigned long long[n_realloc];
            
            // initialize
            for (long long i = 0; i < n_realloc; i++) {
                tmp[i] = 0;
            }

            memo = tmp;

            n_alloc = n_realloc;           

        } else {
            // do reallocation and copy
            
            // calculate new size
            long long n_realloc = n_alloc;
            while (n_realloc < num) {
                n_realloc *=2;
            }

            // reallocate
            unsigned long long* tmp = new unsigned long long[n_realloc];
            
            // initialize
            for (long long i = 0; i < n_realloc; i++) {
                tmp[i] = 0;
            }

            // copy
            for (long long i = 0; i < n_alloc; i++) {
                tmp[i] = memo[i];
            }
            
            delete [] memo;

            memo = tmp;

            n_alloc = n_realloc;
        }


        unsigned long long* tmp = new unsigned long long[num];
        
        


    }
    
    static unsigned long long* memo = new unsigned long long[2];


    if (num == 0) return 0;
    if (num == 1) return 1;
    

    unsigned int* memo = new unsigned int[num+1];
    for (unsigned int 

    memo[0] = 0;
    memo[1] = 1;
   
    for (unsigned int i=2; i<=num; i++) {
        memo[i] = memo[i-1] + memo[i-2];
    }
    
    unsigned int ret = memo[num];

    delete [] memo;

    return ret;
}

int main() {
   
    int n;

    std::cin >> n;
    std::cout << fibonacci(n) << std::endl;

    return 0;
}
