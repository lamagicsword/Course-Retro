//Yujian Li(yl7kd) 02/08/16 postfixCalculator.cpp

#include "postfixCalculator.h"
#include <iostream>
#include <cstdlib>

using namespace std;

//Constructor
postfixCalculator::postfixCalculator(){
	_stack = stack();
}
	//adds the passed element to the top of the stack
void postfixCalculator::pushNum(int e){
	_stack.push(e);
}
	//return the element on the top of the stack
int postfixCalculator:: getTopValue() const{
	if(!empty()){
		return _stack.top();
	}
	else{
		cout<<"The list is empty"<<endl;
		exit(-1);
	}
}
	//remove the element on the top of the stack
int postfixCalculator:: popTop() {
	if(!empty()){
		int temp = _stack.top();
		_stack.pop();
	   return  temp;
	}
	else{
		cout<<"The list is empty or can not perform the opertaion"<<endl;
		exit(-1);
	}
}
	//determine if the stack is empty
bool postfixCalculator:: empty() const {
	return _stack.empty();
}
	//add two elements from the top of the stack
void postfixCalculator:: add(){
	int temp = popTop();
	pushNum(temp+popTop());
}
	//multiply two elements from the top of the stack
void postfixCalculator:: mult(){
	int temp = popTop();
	pushNum(temp*popTop());
};
	//substract two elements from the top of the stack
void postfixCalculator:: minu(){
	int temp = popTop();
	pushNum(popTop()-temp);
};
	//divide two elements from the top of the stack
void postfixCalculator:: div(){
	int temp = popTop();
	pushNum(popTop()/temp);
};
    //negate the top element of the stack
void postfixCalculator:: tilde(){
	int temp = popTop();
	pushNum(-1*temp);
};
