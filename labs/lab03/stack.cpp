//Yujian Li (yl7kd) 02/09/16 stack.cpp

#include "stack.h"
#include <iostream>

using namespace std;


//Constructor

stack::stack(){
	head = new stackNode;
	head->next = NULL;
	count = 0;
}

stack::~stack(){
	while(!empty()){
		pop();
	}
}

int stack::top() const{
	return head->next->value;
}

void stack::pop(){
	stackNode *a = head;
	head = a->next;
	delete a;
	count --;	
}

void stack::push(int e){
	stackNode *a = new stackNode();
	stackNode *b = head;
	stackNode *c = head->next;
	a->next = c;
	b->next = a;
	a->value = e;
	count++;
}

bool stack:: empty() const{
	return head->next==NULL;
}

int stack:: size() const {
	return count;
}
