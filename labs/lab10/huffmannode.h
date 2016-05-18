//Yujian Li(yl7kd) 04/18/16 huffmannode.h Section 102

#ifndef HUFFMANNODE_H
#define HUFFMANNODE_H

#include <iostream>

using namespace std;

class huffmannode{
public:
	//huffmannode();
	huffmannode(int f, char c);
	~huffmannode();
	char getcontent();
	int getfrequency() const;
	string getcode();
	bool operator<(const huffmannode& n) const;

	char content;
	int frequency;
	string code;
	huffmannode* left;
	huffmannode* right;
	friend class huffmantree;
	friend class huffmanenc;
	};

#endif
