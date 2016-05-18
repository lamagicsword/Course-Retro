//Yujian Li(yl7kd) huffmantree.h 04/18/16 Section 102

#ifndef HUFFMANTREE_H
#define HUFFMANTREE_H

#include <iostream>
#include "binary_heap.h"
#include "huffmannode.h"
#include <map>

using namespace std;

class huffmantree{
public:
	huffmantree();
	huffmantree(huffmannode* input);
	~huffmantree();
	huffmannode* getroot();
	binary_heap* sort(binary_heap* h);
	void print(huffmannode* root1, string code);
	map<char,string> collection;
private:
	huffmannode* root;
	
};


#endif
