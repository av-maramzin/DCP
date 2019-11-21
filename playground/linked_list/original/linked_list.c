#include <stdlib.h>
#include <stdio.h>

const int n = 1000000;

typedef struct ListNode {
    int data;
    struct ListNode* next;
} ListNode_t;

int main()
{
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

    // [2] Increment all linked-list elements

    tmp = head;
    for (size_t i=0; i<n; i++) {
        tmp->data++;
        tmp = tmp->next;
    }
    
    // [3] Compute reduction(:+) on the linked-list 
    // and print the former on the screen

    unsigned long long int reduction = 0;

    tmp = head;
    while (tmp != NULL) {
        reduction += tmp->data;
        tmp = tmp->next;
    }

    printf("%lld\n", reduction);

    return 0;
}
