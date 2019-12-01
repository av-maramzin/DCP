
#include <cstdio>

#include "Sequence.h"

const int n = 1000000;

typedef struct ListNode {
    int data;
    struct ListNode* next;
} ListNode_t;

int main()
{
    ListNode_t* head;
    ListNode_t* tmp;
   
    head = (ListNode_t*) malloc(sizeof(ListNode_t));
  
    tmp = head;
    for (int i=0; i<n-1; i++) {
        tmp->next = (ListNode_t*) malloc(sizeof(ListNode_t));
        tmp->data = i;
        tmp = tmp->next;
    }

    unsigned long long int reduction = 0;
    
    tmp = head;
    for (size_t i=0; i<n; i++) {
        reduction += tmp->data;
        tmp = tmp->next;
    }

    printf("%lld",reduction);

    return 0;
}
