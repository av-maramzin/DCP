
#include <iostream>
#include <cmath>

#include "abstract/include/Reduce.h"

using namespace abstract;

class Element;
using Reduce_ElementType = class Element;
using Reduce_SeedType = int;
using Reduce_InjectType = int;
using ReduceType = Reduce<Reduce_ElementType,
                          Reduce_SeedType,
                          Reduce_InjectType>;

class Element : public ReduceType::Element {

    public:

        Element(ReduceType::ElementInfo& info) : ReduceType::Element(info) {}
        ~Element() override {}
        
        void grow() override { 
            value = 2.0;
            num = 0;
        }

        double value;
        int num;
};

using Reduce_ComputeType = double;
class Reduce_ComputeFunc : public ReduceType::ComputeFunction<Reduce_ComputeType> {

    public:

        Reduce_ComputeType operator()(ReduceType::Element_t&) override;
        Reduce_ComputeType operator()(std::vector<Reduce_ComputeType>&) override;
};

Reduce_ComputeType Reduce_ComputeFunc::operator()(ReduceType::Element_t& elem) {
    elem.num++;
    return std::pow(elem.value, elem.num-1);
}

Reduce_ComputeType Reduce_ComputeFunc::operator()(std::vector<Reduce_ComputeType>& rets) {
    double total_ret = 0;
    for (auto ret : rets) {
        total_ret += ret;
    }
}

int main() {

    ReduceType reduce;
    reduce.set_impl_type(ReduceType::ImplType::parallel);

    int width = 5;
    reduce.grow(width);
    
    Reduce_ComputeFunc comp_func;
    std::cout << reduce.template compute<double> (comp_func) << std::endl;

    return 0;
}

