//Yujian Li(yl7kd) 03/28/16	Section 102

#include <iostream>
#include <time.h>
#include <cstdlib>

using namespace std;

extern "C" int product (int , int);
extern "C" int power   (int , int);

int main(){
	int x,y;
	int pro,pow;
	
	cout<<"Please enter two postive integer x and y:"<<endl;
	cin>>x;
	cin>>y;

	pro= product (x,y);
	pow= power (x,y);

	cout<<pro<<endl;
	cout<<pow<<endl;
	return 0;
}
