#include <stdlib.h>

typedef struct node {
    int data;
    struct node* next;
} node_t;

node_t* create_list(unsigned int elems_num) {

    node_t* head;
    node_t* tail;
    node_t* next_node;

    head = NULL;
    tail = NULL;
    next_node = NULL;

    if (elems_num <= 0) {
        return NULL;
    }

    // allocate the head of the list
    head = malloc(sizeof(node_t));
    head->data = 0;
    head->next = NULL;

    // grow the list to the required elements number
    tail = head;
    for (unsigned int i = 0; i < elems_num-1; i++) {
        // allocate the next node of the list
        next_node = malloc(sizeof(node_t));
        next_node->data = 0; 
        next_node->next = NULL;

        tail->next = next_node;
        tail = next_node;
    }

    return head;
}

void destroy_list(node_t* head) {

    node_t* to_be_deallocated;

    to_be_deallocated = NULL;

    if (head == NULL) {
        return;
    }

    while (head->next != NULL) {

        to_be_deallocated = head;
        head = head->next;

        free(to_be_deallocated);
    }

    free(head);

    return;
}

const unsigned int n = 100;

int main() {
    
    node_t* list;

    list = create_list(n);
    
    destroy_list(list);

    return 0;
}
