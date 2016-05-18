//Yujian Li(yl7kd) prelab4.cpp 02/15/16

#include <iostream>
#include <climits>

using namespace std;

class prelab4{
public:
	//determines the size of various data types
	void sizeOfTest();
	//covert a input number into binary 
	void outputBinary();
	//determine if it is overflow
	void overflow();
};

void sizeOfTest(){
	cout<<"The size of int type is "<<sizeof(int)<<endl;
	cout<<"The size of unsigned int type is "<<sizeof(unsigned int)<<endl;
    cout<<"The size of float type is "<<sizeof(float)<<endl;
	cout<<"The size of double type is "<<sizeof(double)<<endl;
	cout<<"The size of char type is "<<sizeof(char)<<endl;
	cout<<"The size of bool type is "<<sizeof(bool)<<endl;
	cout<<"The size of int* type is "<<sizeof(int*)<<endl;
	cout<<"The size of char* type is "<<sizeof(char*)<<endl;
	cout<<"The size of double* type is "<<sizeof(double*)<<endl;
}
void outputBinary(unsigned int x){
	int re;
	int i=0;
	int bi[31]={0};
	while(x>0){
		re = x%2;
		x=x/2;
		bi[31-i]=re;
		i++;
	}
	for(int j=0;j<32;j++){
	    cout<<bi[j];
	}

}

void overflow(){
	unsigned int x = UINT_MAX;
	x=x+1;
	cout<<x<<endl;
	cout<<"The program halted."<<endl;
	cout<<"The number becomes zero"<<endl;
	cout<<"Because of the nature of unsigned integer, its value can never be negative. As it becomes overflow, all the data was dumped out of the memory which makes it empty hence the value is zero which is its minimum number"<<endl;
}

int main(){
	sizeOfTest();
	outputBinary(1);
	cout<<" "<<endl;
	outputBinary(5);
	cout<<" "<<endl;
	outputBinary(1000000);
	cout<<" "<<endl;
	overflow();
	return 0;
}
