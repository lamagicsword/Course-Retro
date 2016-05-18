//Yujian Li(yl7kd) 04/18/16 huffmannode.cpp Section 102

#include "huffmannode.h"

using namespace std;


/*huffmannode::huffmannode(){
	content = 0;
	frequency = 0;
	code = "";
	left = NULL;
	right = NULL;
}
*/
huffmannode::huffmannode(int f, char c){
	content = c;
	frequency = f;
	code = "";
	left = NULL;
	right = NULL;
}

huffmannode::~huffmannode(){
	
}

char huffmannode::getcontent(){
	return content;

}

bool huffmannode::operator<(const huffmannode& n) const{
	int thisFreq = this->getfrequency();
	//cout << "thisFreq is " << thisFreq << endl;
	int nFreq    = n.getfrequency();
	//cout << "nFreq is " << nFreq << endl;

	return thisFreq < nFreq;
	
	
	//return(this->getfrequency()<n.getfrequency());
}

int huffmannode::getfrequency() const{
	return frequency;
}

string huffmannode::getcode(){
	return code;
}
