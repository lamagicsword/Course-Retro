// Insert your header information here
// TreeCalc.cpp:  CS 2150 Tree Calculator method implementations

#include "TreeCalc.h"
#include <iostream>
#include <cstdlib>

using namespace std;

//Constructor
TreeCalc::TreeCalc() {
	stack<TreeNode*> mystack;
}

//Destructor- frees memory
TreeCalc::~TreeCalc() {
	if(mystack.empty()){
		return;
	}
	cleanTree(mystack.top());
}

//Deletes tree/frees memory
void TreeCalc::cleanTree(TreeNode* ptr) {
	if(ptr!=NULL){
		cleanTree(ptr->left);
		cleanTree(ptr->right);
	}
	else{
		delete ptr;
	}
}

//Gets data from user
void TreeCalc::readInput() {
    string response;
    cout << "Enter elements one by one in postfix notation" << endl
         << "Any non-numeric or non-operator character,"
         << " e.g. #, will terminate input" << endl;
    cout << "Enter first element: ";
    cin >> response;
    //while input is legal
    while (isdigit(response[0]) || response[0]=='/' || response[0]=='*'
            || response[0]=='-' || response[0]=='+' ) {
        insert(response);
        cout << "Enter next element: ";
        cin >> response;
    }
}

//Puts value in tree stack
void TreeCalc::insert(const string& val) {
    // insert a value into the tree
	if(isdigit(val.c_str()[0])||isdigit(val.c_str()[1])){
    TreeNode* insert = new TreeNode();
	insert->value=val;
	mystack.push(insert);
	}
	else{
	TreeNode* insert = new TreeNode();
	insert->value=val;
	insert->right=mystack.top();
	mystack.pop();
	insert->left=mystack.top();
	mystack.pop();
	mystack.push(insert);
	}
}

//Prints data in prefix form
void TreeCalc::printPrefix(TreeNode* ptr) const {
    // print the tree in prefix format
	if(ptr!=NULL){
		cout<<ptr->value<<" ";
		printPrefix(ptr->left);
		printPrefix(ptr->right);
	}
}

//Prints data in infix form
void TreeCalc::printInfix(TreeNode* ptr) const {
    // print tree in infix format with appropriate parentheses
	if(ptr!=NULL){
		if(!isdigit(ptr->value.c_str()[ptr->value.length()-1])){
					cout<<"(";
				printInfix(ptr->left);
				cout<<" "<<ptr->value<<" ";
				printInfix(ptr->right);
					cout<<")";
		}		
	
		else{
		cout<<ptr->value;
		}
	}
}

//Prints data in postfix form
void TreeCalc::printPostfix(TreeNode* ptr) const {
    // print the tree in postfix form
	if(ptr!=NULL){
		printPostfix(ptr->left);
		printPostfix(ptr->right);
		cout<<ptr->value<<" ";
	}
}

// Prints tree in all 3 (pre,in,post) forms

void TreeCalc::printOutput() const {
    if (mystack.size()!=0 && mystack.top()!=NULL) {
        cout << "Expression tree in postfix expression: ";
        // call your implementation of printPostfix()
		printPostfix(mystack.top());
        cout << endl;
        cout << "Expression tree in infix expression: ";
        // call your implementation of printInfix()
		printInfix(mystack.top());
        cout << endl;
        cout << "Expression tree in prefix expression: ";
        // call your implementation of printPrefix()
		printPrefix(mystack.top());
        cout << endl;
    } else
        cout<< "Size is 0." << endl;
}

//Evaluates tree, returns value
// private calculate() method
int TreeCalc::calculate(TreeNode* ptr) const {
    // Traverse the tree and calculates the result
	if(mystack.size()==0){
		return 0;
	}
	int res =0;
	if(ptr->left==NULL&&ptr->right==NULL){
		return atoi(ptr->value.c_str());
	}
	else if(ptr->value=="+"){
		res = calculate(ptr->left)+calculate(ptr->right);
	}
	else if(ptr->value=="-"){
		res = calculate(ptr->left)-calculate(ptr->right);
	}
	else if(ptr->value=="*"){
	    res = calculate(ptr->left)*calculate(ptr->right);
	}
	else if(ptr->value=="/"){
		if(calculate(ptr->right)!=0){
	    res = calculate(ptr->left)/calculate(ptr->right);
		}
		else{
			cout<<"invalid."<<endl;
			exit(-1);
		}
	}
	return res;
}

//Calls calculate, sets the stack back to a blank stack
// public calculate() method. Hides private data from user
int TreeCalc::calculate() {
    int i = 0;
    // call private calculate method here
	if(mystack.size()==0){
		return 0;
	}
	else{
	i=calculate(mystack.top());
    return i;
	}
}
