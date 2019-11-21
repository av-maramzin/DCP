#include <stdlib.h>
#include <stdio.h>

const int n = 1000000;

typedef struct ListNode {
    int data;
    struct ListNode* next;
} ListNode_t;

int main()
{
    using namespace abstract;

    ListNode_t* head;
    ListNode_t* tmp;
   
    // [1] Linked-list allocation and initialization

    // Allocate the head of the list
    head = (ListNode_t*) malloc(sizeof(ListNode_t));
    head->data = 0;
    // Allocate the elements of the list
    tmp = head;
    for (int i=1; i<n; i++) {
        tmp->next = (ListNode_t*) malloc(sizeof(ListNode_t));
        tmp = tmp->next;
        tmp->data = i;
    }
    // End the linked-list with a NULL pointer
    tmp->next = NULL;
    
    // !!! Recreate the constructed linked-list as an abstract sequence
    Sequence s(head, Sequence::DataStructure::LINKED_LIST);

    // [2] Increment all sequence elements
    
    s.map((int i) -> int {i++;} );

    // [3] Compute reduction(:+) on the sequence
    // and print the former on the screen

    unsigned long long int reduction = 0;
    
    reduction = s.reduce(Sequence::Reduction::PLUS);

    printf("%lld\n", reduction);

    return 0;
}
