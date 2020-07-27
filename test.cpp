
#include <iostream>

class Functor {

    public:

        Functor(int x, int y)
            : x(x), y(y) {}

        virtual int operator()(int num) { return x*y + num; }
        virtual int operator()(int num[], int n) {
            int tmp = 0;
            for (int i = 0; i < n; i++) {
                tmp += num[i];
            }
            return x*y + tmp;
        }

        int x;
        int y;
};

class Func : public Functor {

    public:

        Func(int x, int y)
            : Functor(x,y), x(x), y(y) {}

        int operator()(int num) override { return x*y - num; }
        int operator()(int num[], int n) override {
            int tmp = 0;
            for (int i = 0; i < n; i++) {
                tmp -= num[i];
            }
            return x*y + tmp;
        }

        int x;
        int y;
};

int main() {
    
    Func func(1,2);
    int array[] = {1, 2, 3, 4};

    int res_1 = func(5);
    int res_2 = func(array, sizeof(array)/sizeof(int));
    
    std::cout << res_1 << std::endl; 
    std::cout << res_2 << std::endl; 

    return 0;
}

