//Yujian Li (yl7kd) 04/11/16 Section 102

#include <iostream>
#include <cstdlib>
#include "timer.h"

using namespace std;

extern "C" int threexplusone(int);
//main.cpp

int main(){
	int num,tri,step;
	double avg;
	timer t;
	cout<<"Please enter a postive integer that I cannot refuse"<<endl;
	cin>>num;
	cout<<"Please enter the number of trials"<<endl;
	cin>>tri;
	t.start();
	for(int i=0;i<tri;i=i+3){
		threexplusone(num);
		threexplusone(num);
		threexplusone(num);
	}
	t.stop();
	avg = 1000*t.getTime()/tri;
	cout<<"It took "<<threexplusone(num)<<" steps to reach 1"<<endl;
	cout<<"The average runtime after "<<tri<<" trials is "<<avg<<" ms"<<endl;
	return 0;
}
