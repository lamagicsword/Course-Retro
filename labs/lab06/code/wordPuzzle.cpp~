//Yujian Li(yl7kd) 03/12/16 wordPuzzle.cpp 102
//Due to the nested 4 for loops to find the word, therefore the run-time should be n^4 running time.
#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <string>
#include "timer.h"
#include "hashTable.h"
#include <stack>
#include <sstream>

using namespace std;
#define MAXROWS 500
#define MAXCOLS 500
char table[MAXROWS][MAXCOLS];

bool readInTable (string filename, int &rows, int &cols);
char* getWordInTable (int startRow, int startCol, int dir, int len,
                      int numRows, int numCols);

int main(int argc, char** argv){
	if(argc!=3){
		cout<<"Invalid Input"<<endl;
		exit(-1);
	}
	stack<string> store;
	string dic = argv[1];
	ifstream ifs;
	int hashsize=0;
	ifs.open(dic.c_str());
	string s;
	while(getline(ifs,s)){
		hashsize++;
	}
	ifs.close();
	hashTable *hash = new hashTable(hashsize);
	ifs.open(dic.c_str());
	string s2;
	while(ifs.good()){
		getline(ifs, s2);
		if(s2.length()>2){
			hash->insert(s2);
		}
	}
	ifs.close();
	string grid = argv[2];
	ifs.open(grid.c_str());
	

	int rows, cols;
    // attempt to read in the file
    bool result = readInTable (grid.c_str(), rows, cols);
    // if there is an error, report it
    if ( !result ) {
        cout << "Error reading in file!" << endl;
        exit(1); // requires the <stdlib.h> #include header!
    }
    // Get a word (of length 10), starting at position (2,2) in the
    // array, in each of the 8 directions
	// cout << endl;
	timer t;
	t.start();
	int wordfound =0;
	string word;
    const string direction [8] = {"N ","NE","E ","SE","S ","SW","W ","NW"};
	for(int Row =0; Row<rows; Row++){
		for(int Col=0;Col<cols;Col++){
			for(int Dir=0;Dir<8;Dir++){
			for(int max=3;max<=hash->getlen();max++){
					word = getWordInTable(Row,Col,Dir,max,rows,cols);
					if(word.length()==max){
						if(hash->contains(word)){
							wordfound++;
							stringstream s1;
							s1 << Row;
							string row = s1.str();
							stringstream s2;
							s2 << Col;
							string col = s2.str();
							string s = direction[Dir]+"("+row+", "+col+")"+":\t"+word;
							store.push(s);
							//cout<<direction[Dir]<<"("<<Row<<", "<<Col<<")"<<":\t"<<word<<endl;;
						}
					}
				}
			}
		}
	}
    // All done!
	t.stop();
	while(!store.empty()){
		cout<<store.top()<<endl;
		store.pop();
		}
	cout<<wordfound<<" words found"<<endl;
	cout<<"Found all words in "<< t.getTime() << "seconds"<<endl;
	cout<<hash->getcoli()<<endl;
	cout<<(int)(t.getTime()*1000)<<endl;
}

bool readInTable (string filename, int &rows, int &cols) {
    // a C++ string to hold the line of data that is read in
    string line;
    // set up the file stream to read in the file (takes in a C-style
    // char* string, not a C++ string object)
    ifstream file(filename.c_str());
    // upon an error, return false
    if ( !file.is_open() )
        return false;
    // the first line is the number of rows: read it in
    file >> rows;
	// cout << "There are " << rows << " rows." << endl;
    getline (file,line); // eats up the return at the end of the line
    // the second line is the number of cols: read it in and parse it
    file >> cols;
    //cout << "There are " << cols << " cols." << endl;
    getline (file,line); // eats up the return at the end of the line
    // the third and last line is the data: read it in
    getline (file,line);
    // close the file
    file.close();
    // convert the string read in to the 2-D grid format into the
    // table[][] array.  In the process, we'll print the table to the
    // screen as well.
    int pos = 0; // the current position in the input data
    for ( int r = 0; r < rows; r++ ) {
        for ( int c = 0; c < cols; c++ ) {
            table[r][c] = line[pos++];
			// cout << table[r][c];
        }
		// cout << endl;
    }
    // return success!
    return true;
}

char* getWordInTable (int startRow, int startCol, int dir, int len,
                      int numRows, int numCols) {
    // the static-ness of this variable prevents it from being
    // re-declared upon each function invocataion.  It also prevents it
    // from being deallocated between invocations.  It's probably not
    // good programming practice, but it's an efficient means to return
    // a value.
    static char output[256];
    // make sure the length is not greater than the array size.
    if ( len >= 255 )
        len = 255;
    // the position in the output array, the current row, and the
    // current column
    int pos = 0, r = startRow, c = startCol;
    // iterate once for each character in the output
    for ( int i = 0; i < len; i++ ) {
        // if the current row or column is out of bounds, then break
        if ( (c >= numCols) || (r >= numRows) || (r < 0) || (c < 0) )
            break;
        // set the next character in the output array to the next letter
        // in the table
        output[pos++] = table[r][c];
        // move in the direction specified by the parameter
        switch (dir) { // assumes table[0][0] is in the upper-left
            case 0:
                r--;
                break; // north
            case 1:
                r--;
                c++;
                break; // north-east
            case 2:
                c++;
                break; // east
            case 3:
                r++;
                c++;
                break; // south-east
            case 4:
                r++;
                break; // south
            case 5:
                r++;
                c--;
                break; // south-west
            case 6:
                c--;
                break; // west
            case 7:
                r--;
                c--;
                break; // north-west
        }
    }
    // set the next character to zero (end-of-string)
    output[pos] = 0;
    // return the string (a C-style char* string, not a C++ string
    // object)
    return output;
}
