//Yujian Li (yl7kd) 02/09/16 stack.h

#ifndef STACK_H
#define STACK_H

#include <iostream>
#include "stackNode.h"

using namespace std;

class stack{

public:
	//Constructor
	stack();
	//Destructor
	~stack();
	//return the element at the top of the list
	int top() const;
	//remove the element at the top of the list
	void pop();
	//add the passed element to the top of the list
	void push(int e);
	//check if the stack is empty
	bool empty() const;
	//return the size of the stack
	int size() const;

private:
	//indicate the begining of the stack
	stackNode *head;
	//number of elements
	int count;

		};

#endif
