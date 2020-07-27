
#include "abstract/include/Fold.h"
using namespace abstract;

using FoldType = Fold<class Elem>;
class Elem : public FoldType::Element {
    public:
        void grow() override { value = 1; }
        int value;
};

class Fold_ComputeFunc : public FoldType::ComputeFunction<int> {
    public:
        int operator()(FoldType::Element_t& element, int cumulative) override {
            element.value = element.value + cumulative.value;
            return element.value;
        }
};

int main() {
    
    FoldType fold(5);

    Fold_ComputeFunc comp_func;
    int result = fold.template compute<Demand>(comp_func);

    return 0;
}
