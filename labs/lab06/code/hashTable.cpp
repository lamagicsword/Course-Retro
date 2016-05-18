//Yujian Li(yl7kd) 03/12/16 hashTable.cpp 102

#include "hashTable.h"
#include <iostream>
#include <math.h>

using namespace std;

hashTable::hashTable(){
	hash = new vector<list<string> >;
	siz = 0;
	len = 0;
	coli = 0;
	hash->resize(siz);
}

hashTable::hashTable(int size){
	hash = new vector<list<string> >;
	len = 0;
	coli = 0;
	//increase the size
	size = size*11;
	if(checkprime(size)){
		siz = size;
	}
	else {
		siz = getNextPrime(size);
	}
	hash->resize(siz);
}

hashTable::~hashTable(){
	
}
int hashTable:: getlen(){
	return this->len;
}

int hashTable:: getcoli(){
	return this->coli;
}
int hashTable::hashing(string inpu){
//Version 1 original
/*		int val = 0;
		for(int i =0; i<inpu.length();i++){
			val+=inpu[i];
		}
		return val % this->siz;
*/		
//Version 2 better
/* 	int val =0;
	for(int i=0;i<inpu.length();i++){
		val+=inpu[i]*pow(i,2)+90;
	}
	return val % this->siz;

*/
//Version 3 best
	int val =  5381;
	for(int i=0;i<inpu.length();i++){
		val+=(inpu[i]<<5)+val;
	}
	return val % this->siz;

//Version 4 bad hash
/*	int val = 0;
	val=inpu[1]*33;
	return val & this->siz;
*/
}

bool hashTable::insert(string inpu){
	if(!this->contains(inpu)){
		int index = hashing(inpu);
		if(!hash->at(index).empty()){
			coli++;
		}
		list<string> &list = hash->at(index);
		list.push_back(inpu);
		if(inpu.length()>len){
			len=inpu.length();
		}
		return true;
	}
	else{
		return false;
	}
}

bool hashTable::contains(string inpu){
	int index = hashing(inpu);
	list<string> &list1 = hash->at(index);
	if(list1.empty()){
		return false;
	}
	list<string>::iterator a = list1.begin();
    while(a!=list1.end()){
		if(*a==inpu){
			return true;
		}
		a++;
	}
	return false;
}


bool hashTable::checkprime(unsigned int p) {
    if ( p <= 1 ) // 0 and 1 are not primes; the are both special cases
        return false;
    if ( p == 2 ) // 2 is prime
        return true;
    if ( p % 2 == 0 ) // even numbers other than 2 are not prime
        return false;
    for ( int i = 3; i*i <= p; i += 2 ) // only go up to the sqrt of p
        if ( p % i == 0 )
            return false;
    return true;
}

int hashTable:: getNextPrime (unsigned int n) {
    while ( !checkprime(++n) );
    return n; // all your primes are belong to us
}

