//Yujian Li(yl7kd) 04/25/16 Section 102 topological.cpp

#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <queue>
#include <vector>
#include <string>
using namespace std;

struct node{
	int indegree=0;
	string value;
	vector <node*> adj;
};

class graph{
public:
	graph(int a){
		vector<node *> gra (a);
	}
	void makeGraph(node *a){
		gra.push_back(a);
	}
	void addEdge(node *a, node *b){
		 a->adj.push_back(b);
	}
	void addInde(node *a, int v){
		a->indegree =a->indegree+v;
	}
    vector<node *> gra;
	void toposort();
};

void graph::toposort(){
	queue<node*> q;
	int counter = 0;
	node* V = new node;
	node* W = new node;
    for(int i =0;i<gra.size();i++){
		if(gra[i]->indegree==0){
			q.push(gra[i]);
		}
	}
	while(!q.empty()){
		V = q.front();
		q.pop();
		cout<<V->value<<" ";
		for(int i =0; i<V->adj.size();i++){
			if(--V->adj[i]->indegree==0){
				q.push(V->adj[i]);
			}
		}
	}
	cout<<endl;
}

// we want to use parameters
int main (int argc, char **argv) {
    // verify the correct number of parameters
    if ( argc != 2 ) {
        cout << "Must supply the input file name as the one and only parameter" << endl;
        exit(1);
    }
    // attempt to open the supplied file
    ifstream file(argv[1], ifstream::binary);
    // report any problems opening the file and then exit
    if ( !file.is_open() ) {
        cout << "Unable to open file '" << argv[1] << "'." << endl;
        exit(2);
    }
	graph *g = new graph(100);
    // read in two strings
    string s1, s2;
    file >> s1;
    file >> s2;
    // output those strings
    //cout << s1 << endl;
    //cout << s2 << endl;
	while(s1!="0"){				 
		//	cout<<s1<<" "<<s2<<endl;
		int it1,it2;
		bool chec1=false;
		bool chec2=false;
		vector<node*> vec = g->gra;
		for(int i = 0; i<vec.size();i++){
			if(vec[i]->value==s1){
				it1 = i;
				chec1 = true;
				break;
			}								 
		}
		for(int i = 0; i<vec.size();i++){
			if(vec[i]->value==s2){
				it2 = i;
				chec2 = true;
				break;
			}		
		}
		node* v1 = new node;
		node* v2 = new node;

		if(!chec1){
		v1->value = s1;
		g->makeGraph(v1);
		it1 = g->gra.size()-1;
		}
		if(!chec2){
			v2->value = s2;
			g->makeGraph(v2);
			it2=g->gra.size()-1;
		}
		g->addEdge(g->gra[it1],g->gra[it2]);
		g->addEdge(g->gra[it2],g->gra[it1]);
		g->addInde(g->gra[it2],1);
						 
		file>>s1;
		file>>s2;

	}
		vector<node*> gr = g->gra;
		/*for(int i = 0; i<gr.size();i++){
	   	cout<<(gr[i]->value)<<" "<<gr[i]->adj.size()<<" "<<gr[i]->indegree<<endl;
		}*/
	g->toposort();
    // string comparison done with ==, but not shown here
    // close the file before exiting
    file.close();
}
