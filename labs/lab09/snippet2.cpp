//Yujian Li 04/14/16 Section 102

#include <iostream>
#include <cstdlib>
#include "timer.h"
using namespace std;

void triple(int a){
	a=a*3;
	cout<<a<<endl;
};

int main(){
	t.start();
	for(int i=0;i<10;i++){
		triple(i);
	}
	return 0;
}
