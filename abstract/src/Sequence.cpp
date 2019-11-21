#include "Sequence.h"

using namespace std;

namespace abstract {

template <typename ElemType>
Sequence<ElemType>::Sequence() {}

template <typename ElemType>
Sequence<ElemType>::Sequence(size_t size) {
    _vec.reserve(size);
}

template <typename ElemType>
void Sequence<ElemType>::add(ElemType& elem) {
    _vec.push_back(elem);
}

template <typename ElemType>
ElemType& Sequence<ElemType>::at(size_t i) {
    return _vec.at(i);
}

template <typename ElemType>
template <typename MapFunc>
void Sequence<ElemType>::map(MapFunc) {
    for (auto& vec_elem : _vec) {
        vec_elem = MapFunc(vec_elem);
    }
}

template <typename ElemType>
template <typename OutputStream>
void Sequence<ElemType>::print(OutputStream& out_stream) {
    for (auto& vec_elem : _vec) {
        out_stream << vec_elem;
    }
}

template <typename ElemType>
template <typename TransFunc>
MonotonicSequence::MonotonicSequence(ElemType& seed, std::size_t size, TransFunc trans_func) 
    : Sequence(size)
{
    ElemType elem = seed; 
    for (size_t i=1; i<size; i++) {
        this->add(trans_func(this->at(i-1))); 
    }
}

}; // namespace abstract {
