#ifndef COLLECTION_H
#define COLLECTION_H

template <typename T>
class Collection {

    public:    
        
        /*
         * * Collection *
         * The topmost abstract container of related <typename T>-typed
         * unordered items with a set of supported abstract operations
         */

        Collection(std::vector<T>& vec);
        Collection(std::list<T>& lst);
        
        // get a pointer-linked binary tree into more effective data structure
        Collection(T* root);

        Collection& map();
        T reduce();
        Collection& sort();

    private:

};

#endif // #ifndef COLLECTION_H
