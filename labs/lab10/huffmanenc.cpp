//Yujian Li(yl7kd) huffmanenc.cpp 04/16/16 Section 102

#include "binary_heap.h"
#include "huffmantree.h"
#include "huffmannode.h"
#include <iostream>
#include <stdlib.h>
#include <stdio.h>

using namespace std;



int main(int argc, char **argv){
	 // verify the correct number of parameters
    if ( argc != 2 ) {
        cout << "Must supply the input file name as the one and only parameter" << endl;
        exit(1);
    }
    // attempt to open the supplied file.  FILE is a type desgined to
    // hold file pointers.  The first parameter to fopen() is the
    // filename.  The second parameter is the mode -- "r" means it
    // will read from the file.
    FILE *fp = fopen(argv[1], "r");
    // if the file wasn't found, output and error message and exit
    if ( fp == NULL ) {
        cout << "File '" << argv[1] << "' does not exist!" << endl;
        exit(2);
    }
    // read in each character, one by one.  Note that the fgetc() will
    // read in a single character from a file, and returns EOF when it
    // reaches the end of a file.
    char g;
	int chars[128] = {0};
	int total = 0;
	int dis = 0;
	int original = 0;
    while ( (g = fgetc(fp)) != EOF ){
        int val = (int) g;
		if(val>31&&val<128){
			chars[val]++;
			total++;
		}
	}
	original = total *8;
	binary_heap *heap2 = new binary_heap();
	//binary_heap *heap = new binary_heap();
	for(int i=31;i<128;i++){
		if(chars[i]>0){
			int a = chars[i];
			char cha = (char) i;
			huffmannode* node = new huffmannode(a, cha);
			heap2->insert(node);
			dis++;
		}
	}
	//heap2->print();
	huffmantree* tree = new huffmantree();
	binary_heap* heap1 = tree->sort(heap2);
	//heap1->print();
	tree = new huffmantree(heap1->findMin());
	tree->print(tree->getroot(),"");


    // a nice pretty separator
    cout << "----------------------------------------" << endl;
    // rewinds the file pointer, so that it starts reading the file
    // again from the begnning
    rewind(fp);
    // read the file again, and print to the screen
	int compressed = 0;
    while ( (g = fgetc(fp)) != EOF ){
			if(g>31&&g<128){
		cout<<tree->collection[g]<<" ";
		compressed+=tree->collection[g].size();}
	}
	cout<<endl;
	double ratio = (double) original/compressed;
	double cost = (double) compressed/total;
    // close the file
	cout << "----------------------------------------" <<endl;
	cout<<"There are a total of "<<total<<" symbols that are encoded."<<endl;
	cout<<"There are "<<dis<<" distinct symbols used."<<endl;
	cout<<"There were "<<original<< " bits in the original file."<<endl;
	cout<<"There were "<<compressed<<" bits in the compressed file."<<endl;
	cout<<"This gives a compression ratio of "<<ratio<<" ."<<endl;
	cout<<"The cost of the Huffman tree is "<<cost<<" bits per character."<<endl;
    fclose(fp);
	return 0;
}
