#include <cstdlib>
#include <cstdio>

const unsigned int n = 100;

// List node definition
typedef struct ListNode {
    int data;
    struct ListNode* next; 
} ListNode_t;

int main() {

    ListNode_t* list;
    ListNode_t* node; 
    ListNode_t* tmp; 

    list = (ListNode_t*)malloc(sizeof(ListNode_t));
    node = list;

    // linked list creation
    for (int i=0; i<n-1; i++) {
        node->data = 0;
        node->next = (ListNode_t*)malloc(sizeof(ListNode_t));
        node = node->next; 
    }

    // linked list traversal
    for (node = list; node != nullptr; node = node->next) {
        node->data++; 
    }
  
    // linked list disposal
    node = list;
    while (node != nullptr) {
        tmp = node;
        printf("%d", tmp->data);
        node = node->next;
        free(tmp);
    }

    return 0;
}
