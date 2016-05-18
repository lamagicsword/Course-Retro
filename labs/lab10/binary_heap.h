//Yujian Li (yl7kd) heap.h 04/16/16 Section 102

//I am referencing the code from slides
// Code written by Aaron Bloomfield, 2014
// Released under a CC BY-SA license
// This code is part of the https://github.com/aaronbloomfield/pdr repository

#ifndef BINARY_HEAP_H
#define BINARY_HEAP_H

#include <iostream>
#include <vector>
#include "huffmannode.h"
using namespace std;

class binary_heap {
public:
    binary_heap();
    ~binary_heap();
    void insert(huffmannode* node);
    huffmannode * deleteMin();
	huffmannode * findMin();
    int size();
    void makeEmpty();
    bool isEmpty();
    void print();
	vector<huffmannode*> getvec();

private:
    vector<huffmannode*> heap;
    int heap_size;

    void percolateUp(int hole);
    void percolateDown(int hole);
	
};

#endif

