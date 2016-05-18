//Yujian Li(yl7kd) heap.cpp 04/16/16 Section 102

//I am referencing the code from slides
// Code written by Aaron Bloomfield, 2014
// Released under a CC BY-SA license
// This code is part of the https://github.com/aaronbloomfield/pdr repository

#include <iostream>
#include "binary_heap.h"
using namespace std;

// default constructor
binary_heap::binary_heap():heap_size(0) {
	heap = vector<huffmannode*>();
	heap.reserve(129);
	huffmannode* dummynode = new huffmannode(0,'0');
	heap.push_back(dummynode);
}

// builds a heap from an unsorted vector
/*binary_heap::binary_heap(vector<int> vec) : heap_size(vec.size()) {
    heap = vec;
    heap.push_back(heap[0]);
    heap[0] = 0;
    for ( int i = heap_size/2; i > 0; i-- )
        percolateDown(i);
}
*/
// the destructor doesn't need to do much
binary_heap::~binary_heap() {
}

void binary_heap::insert(huffmannode* node) {
    // a vector push_back will resize as necessary


	heap.push_back(node);
	heap_size++;
	percolateUp(heap_size);

}

void binary_heap::percolateUp(int hole) {
    // get the value just inserted
    huffmannode* node = heap[hole];

    // while we haven't run off the top and while the
    // value is less than the parent...

    for ( ; (hole > 1) && ((*node) <(*heap[hole/2])); hole /= 2 )
        heap[hole] = heap[hole/2]; // move the parent down
    // correct position found!  insert at that spot
	    heap[hole] = node;

}

huffmannode * binary_heap::deleteMin() {
    // make sure the heap is not empty
    if ( heap_size == 0 )
        throw "deleteMin() called on empty heap";
    // save the value to be returned
    huffmannode* ret = heap[1];
 
	// move the last inserted position into the root
    heap[1] = heap[heap_size--];
    // percolate the root down to the proper position
	heap.pop_back();

    percolateDown(1);
    // return the old root node
	//cout<<ret->getcontent()<<endl;
	return ret;
}

void binary_heap::percolateDown(int hole) {
    // get the value to percolate down
	huffmannode* node = heap[hole];
    // while there is a left child...
    while ( hole*2 <= heap_size ) {
        int child = hole*2; // the left child
        // is there a right child?  if so, is it lesser?
        if ( (child!= heap_size) &&((*heap[child+1])<(*heap[child])) ){
            child++;}
        // if the child is greater than the node...
		if ((*heap[child])<(*node)) {
            heap[hole] = heap[child]; // move child up
			 hole = child;             // move hole down
        } else
            break;
		//	hole = child;
    }
    // correct position found!  insert at that spot
    heap[hole] = node;
}

huffmannode * binary_heap::findMin() {
		  if ( heap_size == 0 )
        throw "findMin() called on empty heap";
    return heap[1];
}

int binary_heap::size() {
    return heap_size;
}

void binary_heap::makeEmpty() {
    heap_size = 0;
}

bool binary_heap::isEmpty() {

   return heap_size == 0;
}

vector<huffmannode*> binary_heap:: getvec(){
	return heap;
}
void binary_heap::print() {
    //cout << "(" << heap[0]->getcontent() << ") ";
    for ( int i = 1; i <= heap_size; i++ ) {
		cout << heap[i]->getcontent() << " "<< i;
        // next line from from http://tinyurl.com/mf9tbgm
        bool isPow2 = (((i+1) & ~(i))==(i+1))? i+1 : 0;
        if ( isPow2 )
            cout << endl << "\t";
    }
    cout << endl;
}

