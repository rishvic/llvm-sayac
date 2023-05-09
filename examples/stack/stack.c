//STACK DATA STRUCTURE[

// A structure to represent a stack
struct Stack {
	int top;
	unsigned capacity;
	int array[11];
};


// Stack is full when top is equal to the last index
int isFull(struct Stack* stack)
{
	return stack->top == stack->capacity - 1;
}

// Stack is empty when top is equal to -1
int isEmpty(struct Stack* stack)
{
	return stack->top == -1;
}

// Function to add an item to stack. It increases top by 1
void push(struct Stack* stack, int item)
{
	if (isFull(stack))
		return;
	stack->array[++stack->top] = item;
}

// Function to remove an item from stack. It decreases top by 1
int pop(struct Stack* stack)
{
	if (isEmpty(stack))
		return -32768;
	return stack->array[stack->top--];
}

// Function to return the top from stack without removing it
int peek(struct Stack* stack)
{
	if (isEmpty(stack))
		return -32768;
	return stack->array[stack->top];
}

// Driver program to test above functions
int main()
{
	struct Stack stack;

    stack.capacity = 11;
    stack.top = -1;

	push(&stack, 17);
	push(&stack, 19);
	
    int top = peek(&stack);
    int poppedNum = pop(&stack);

    push(&stack, 23);

	return 0;
}
