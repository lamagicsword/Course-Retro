// Yujian Li (yl7kd) 2/5/16 ListItr.cpp

#include "ListItr.h"
#include <iostream>

  //Constructor
  ListItr::ListItr(){
   current = NULL;
}
  
  //One parameter constructor
  ListItr::ListItr(ListNode* theNode){
    current=theNode;
}
  
  //isPastEnd
bool ListItr:: isPastEnd() const{
    return current->next==NULL;
  }
  
  //isPastBeginning 
bool ListItr:: isPastBeginning() const{
    return current->previous==NULL;
  }
  
  //moveForward
void ListItr:: moveForward(){
    if(!isPastEnd()){
		current=current->next;
    }
  }
  
  //moveBackward
void ListItr:: moveBackward(){
    if(!isPastBeginning()){
		current=current->previous;
    }
  }
  
  //retrieve
int ListItr:: retrieve() const{
    return current->value;
  }
  
  
