#include <cstdlib>

const int n = 100;

typedef struct ListNode {
    int data;
    struct ListNode* next;
} ListNode_t;

int main()
{
   ListNode_t* head;
   ListNode_t* tmp;
   
   head = (ListNode_t*) malloc(sizeof(ListNode_t));
   
   tmp=head;
   for (int i=0; i<n-1; i++) {
       tmp->next = (ListNode_t*) malloc(sizeof(ListNode_t));
       tmp->data = i;
       tmp = tmp->next;
   }

   return 0;
}
