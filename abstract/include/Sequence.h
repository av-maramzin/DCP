#ifndef SEQUENCE_H
#define SEQUENCE_H

#include <Collection.h>

namespace abstract {

template <typename ElemType>
class Sequence : public Collection<ElemType> {

    public:    
        
        Sequence();
        Sequence(ElemType& seed, size_t size);

        // primitive operations
        void add(ElemType& elem);
        ElemType& at(std::size_t i);

        template<typename MapFunc>
        void map();

        template<typename OutputStream>
        void print(OutputStream& out_stream);

    protected:
        std::vector<ElemType> _vec;
};

template <typename ElemType>
class MonotonicSequence : public Sequence<ElemType> {

    public:
        
        template <typename TransFunc>
        MonotonicSequence(ElemType& seed, std::size_t size, TransFunc trans_func);
};

}

#endif // #ifndef COLLECTION_H
