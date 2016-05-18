/*Yujian Li(yl7kd) 04/13/16 Section 102*/

#include <stdio.h>
#include <stdlib.h>

//Contructing a listnode
struct listnode {
	int val;
	struct listnode *next;
};
//main function
int  main(){
	//initializing a head node and a current node
	struct listnode *head;
	struct listnode *cur;
	struct listnode *node;
	int size;
	printf("Enter how many values to input: ");
	scanf("%d",&size);
	head =(struct listnode*) malloc (sizeof(struct listnode));
	cur = head;
	int i;
	for(i=0; i < size;i++){
		int val1;
		printf("Enter value %d: ",i+1);
		scanf("%d",&val1);
		node =(struct listnode*) malloc (sizeof(struct listnode));
		cur->val =val1;
		cur->next =node;
		cur = cur->next;
	}
	cur = head;
	int j;
	for(j = 0; j<size;j++){
		printf("%d \n",cur->val);
		cur = cur->next;
	}
	free(head);
}
