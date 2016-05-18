//Yujian Li (yl7kd) 02/09/16 stackNode.h

#ifndef STACKNODE_H
#define STACKNODE_H

#include <iostream>

using namespace std;

class stackNode {

public:
	//Constructor
	stackNode();


private:

	int value;

	stackNode *next;

	friend class stack;
};


#endif
