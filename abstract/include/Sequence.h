#ifndef SEQUENCE_H
#define SEQUENCE_H

#include <Collection.h>

namespace abstract {

template <typename T>
class Sequence : public Collection<T> {

    public:    
        
        /*
         * Sequence 
         * A collection with a defined linear order
         *
         */

        Sequence();

        // Sequence recreation constructor
        Sequence(T* mem_ptr, Sequence::DataStructure ds_type);
        Sequence(T array[]);

        T& operator[](unsigned int i);

        void map();

        //
        // Reduction
        //

        enum class Reduction {
            PLUS = 0,
            MULT
        };

        enum class DataStructure {
            LINKED_LIST = 0,
            BINARY_TREE
        };

    private:
        std::vector<T> _vec;
};

template <typename T>
class MonotonicSequence : public Sequence<T> {

    public:
        
        MonotonicSequence(T& seed, lambda f, size_t size)
            : Sequence()
        {
            _vec.push_back(seed);
            for (size_t i=1; i<size; i++) {
                _vec[i] = f(vec[i-1]);
            }                
        }

    private:
        std::vector<T> _vec;
};

}

#endif // #ifndef COLLECTION_H
