//Yujian Li (yl7kd) 2/8/16 testPostfixCalc.cpp

#include "postfixCalculator.h"
#include <cstdlib>
#include <cstring>
#include <string>

using namespace std;

int main() {
    postfixCalculator p;
	//seperate the input by space
	while(true) {
		string s;
        cin >> s;
        if(s == "") {
            break;
        }
		if(isdigit(s[0])){
			 char * cstr = new char [s.length()+1];
			 strcpy (cstr, s.c_str());
			 int temp = atoi(cstr);
			 p.pushNum(temp);
		}
		else if(s[0]=='-'&&isdigit(s[1])){
			 char * cstr = new char [s.length()+1];
			 strcpy (cstr, s.c_str());
			 int temp = atoi(cstr);
			 p.pushNum(temp);
		}
		else if(s[0]=='+'){
			p.add();
		}
		else if(s[0]=='-'&&s.length()==1){
			p.minu();
		}
		else if(s[0]=='*'){
			p.mult();
		}
		else if(s[0]=='/'){
			p.div();
		}
		else if(s[0]=='~'){
			p.tilde();
		}
    }
	 cout << "Result is: " << p.getTopValue() << endl;
    return 0;
}
