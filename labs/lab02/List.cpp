// Yujian Li(yl7kd) 2/5/16 List.cpp

#include "List.h"
#include <iostream> 
#include <sstream>

using namespace std;


  //Constructor
  List::List(){
    head=new ListNode;
    tail=new ListNode;
    head->next=tail;
    tail->previous=head;
	head->previous=NULL;
	tail->next=NULL;
    count=0;
  }

  //Destructor
  List::~List(){
    makeEmpty();
  }

  //Copy Constructor
  List::List(const List& source) {      // Copy Constructor
    head=new ListNode;
    tail=new ListNode;
    head->next=tail;
    tail->previous=head;
    count=0;
    ListItr iter(source.head->next);
    while (!iter.isPastEnd()) {       // deep copy of the list
        insertAtTail(iter.retrieve());
        iter.moveForward();
    }
  }

  //Eqauls Operator
  List& List::operator=(const List& source) { //Equals operator
    if (this == &source)
        return *this;
    else {
        makeEmpty();
        ListItr iter(source.head->next);
        while (!iter.isPastEnd()) {
            insertAtTail(iter.retrieve());
            iter.moveForward();
        }
    }
    return *this;
    }

  //is Empty()
  bool List::isEmpty() const{
    return head->next==tail&&tail->previous==head;
  }

  //makeEmpty()
  void List::makeEmpty(){
    while(!isEmpty()){
		ListNode *a = head;
		head = a->next;
		head->previous=NULL;
		delete a;
		count--;
    }
  }
  
  //first()
ListItr List:: first(){
    ListItr Iter(head->next);
    return Iter;
  }

  //last()
ListItr List:: last(){
    ListItr Iter(tail->previous);
    return Iter;
  }
  
  //insertAfter()
  void List::insertAfter(int x, ListItr position){
	if(!position.isPastEnd()){
	ListNode *a= new ListNode();
	ListNode *p= position.current->next;
	ListNode *q= position.current;
	a->previous=q;
	a->next=p;
	p->previous = a;
	q->next=a;
    a->value=x;
    count++;
	  }
  }

  //insertBefore()
  void List::insertBefore(int x, ListItr position){
	if(!position.isPastBeginning()){
	ListNode *a = new ListNode();
	ListNode *p = position.current->previous;
	ListNode *q = position.current;
	a->previous=p;
	a->next=q;
	p->next=a;
	q->previous=a;
    a->value=x;
    count++;
	}
  }

  //insertAtTail()
  void List::insertAtTail(int x){
	  insertBefore(x,tail);
  }
  
  //remove()
  void List::remove(int x){
    ListItr Itr (head->next);
    while(!Itr.isPastEnd()){
		if(Itr.retrieve()!=x){
            Itr.moveForward();
		}
		else{
		ListNode *a = Itr.current->previous;
		ListNode *b = Itr.current;
		b->next->previous=a;
		a->next = b->next;
		delete b;
		count--;	
		break;
		}
	}
  }
  
  //find()
  ListItr List:: find(int x){
    ListItr Itr(head);
    while(!Itr.isPastEnd()){
      Itr.moveForward();
      if(Itr.retrieve() == x){
		  
		  return Itr;
    }
    
    }
    return Itr;
  }
  //size()
  int List::size() const{
    return count;
  }
  
  //printList()
void printList(List& theList, bool forward){
	string str;
    if(forward){
      ListItr a = theList.first();
      while(!a.isPastEnd()){
		  stringstream ss;
		  string tem;
		  ss<<a.retrieve();
		  ss>>tem;
		  str+=tem+" ";
	a.moveForward();
      }
      
    }
    else{
      ListItr a = theList.last();
      while(!a.isPastBeginning()){
		  stringstream ss;
		  string tem;
		  ss<<a.retrieve();
		  ss>>tem;
		  str+=tem+" ";
	a.moveBackward();
      }
    }
		cout<<str<< endl;
}
  

