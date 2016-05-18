//Yujian Li(yl7kd) 03/12/16 hashTable.h 102

#ifndef HASHTABLE_H_
#define HASHTABLE_H_

#include <list>
#include <iostream>
#include <vector>
#include <string>
#include <stdlib.h>

using namespace std;

class hashTable{
public:
	//constructor
	hashTable();
	//constructor that defines the size of the table
	hashTable(int size);
	//destructor
	~hashTable();
	//returns the longest word
	int getlen();
	//returns the number of collisions;
	int getcoli();
	//hash function
	int hashing(string inpu);
	//insert the value into hashtable
	bool insert(string inpu);
	//find the value that matched inside hashtable
	bool contains (string inpu);
	// check if the number is prime
	bool checkprime(unsigned int p);
	//find the next prime number
	int getNextPrime(unsigned int n);
private:	
	vector<list<string> > *hash;
	int len;
	int siz;
	int coli;
};

#endif
