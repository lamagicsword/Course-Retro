//Yujian Li bitCounter.cpp 02/17/16

#include <iostream>
#include <stdlib.h>

using namespace std;

int countbit(unsigned int n){
	int sum=0;
	if(n==0){
		return sum;
	}
	else if(n%2==0){
		sum+=countbit(n/2);
		return sum;
	}
	else{
		int a=n/2;
		sum+=countbit(a)+1;
		return sum;
	}
}


int main (int argc, char **argv){
	if(!argc==2){
		cout<<"This action is illegal"<<endl;
		exit(-1);
	}
	else{
	unsigned int num = atoi(argv[1]);
	cout<<"There are "<< countbit(num)<<" one inside number "<<num<<endl;
	}
		return 0;
}
