
#include <cmath>
#include <iostream>

#include "abstract/include/Fold.h"

using namespace abstract;

typedef struct demand {
    
    demand() : value(0) {}

    struct demand& operator=(const struct demand ref) {
        this->value = ref.value;
    }

    int value;
} Demand;

// Fold

using Fold_ElementType = class Elem;
using Fold_SeedType = int;
using Fold_InjectType = int;
using FoldType = Fold<Fold_ElementType,
                      Fold_SeedType,
                      Fold_InjectType>;

class Elem : public FoldType::Element {
    
    public:
        
        Elem(FoldType::ElementInfo& info) : FoldType::Element(info) {}
        ~Elem() {}

        void grow() override { D.value = 1; }
        
        Demand D;
};

using Fold_ComputeType = struct demand;
class Fold_ComputeFunc : public FoldType::ComputeFunction<Fold_ComputeType> {
    
    public:

        Fold_ComputeType operator()(FoldType::Element_t& element, 
                                    Fold_ComputeType cumulative) override;
};

Fold_ComputeType Fold_ComputeFunc::operator()(FoldType::Element_t& element, 
                                              Fold_ComputeType cumulative)
{
    std::cout << "[" << element.element_info().index << "]" << element.D.value << " ";

    element.D.value = element.D.value + cumulative.value;
    return element.D;
}

int main() {
    
    FoldType fold;

    fold.grow(5);

    Demand result;
    Fold_ComputeFunc comp_func;
    for (int i=0; i<5; i++) {
        result = fold.template compute<Demand>(comp_func);
        std::cout << std::endl;
    }
    std::cout << std::endl;

    std::cout << result.value << std::endl;

    return 0;
}

