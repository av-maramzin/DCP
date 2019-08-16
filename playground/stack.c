#include <stdio.h>

#define SIZE 100
static int stack[SIZE];
static unsigned int head = 0;

void push(int);
int pop();

int main() {

    printf("[ ");
    for (unsigned int i = 0; i < SIZE; i++) {
        printf("%d ", i);
        push(i);
    }
    printf("]\n");

    printf("[ ");
    for (unsigned int i = 0; i < SIZE; i++) {
        printf("%d ", pop());
    }
    printf("]\n");

    return 0;
}

void push(int value) {
    if (head < SIZE) {
        stack[head++] = value;
    } else {
        printf("stack error: overflow!\n");
    }
}

int pop() {
    if (head > 0) {
        return stack[head--];
    } else {
        printf("stack error: popped from an empty stack!\n");
        return 0;
    }
}
