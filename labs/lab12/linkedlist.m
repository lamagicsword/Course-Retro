//Yujian Li(yl7kd) 04/29/16 Section 102 linkedlist.m

#import <stdio.h>


#import <Foundation/NSObject.h>
//#import "LinkedNode.h"

@interface ListNode: NSObject
{
@private
	ListNode *next;
	int val;
}

- (id) val:(int) input;
- (int) val;
- (id) next: (ListNode *) nextptr;
- (ListNode*) next;
@end

@implementation ListNode
-(id) val: (int) input{
	val = input;
	return self;
}
-(int) val {
	return val;
}
-(id) next: (ListNode *) nextptr{
	next = nextptr;
	return self;
}
-(ListNode*) next{
	return next;
}
@end

int main(){
	ListNode *head = [ListNode new];
	ListNode *cur = [ListNode new];
	int size;   //initialze the size of the linkedlist
	printf(" Enter how many values to input: ");
	scanf("%d",&size);
	//initialize the head node
	head = [[ListNode alloc] init];
	cur = head;
	//push the designated node into the linkedlist
	int i =0;
	for(i=0; i<size;i++){
		int val1;
		printf("Enter value %d: ",i+1);
		scanf("%d",&val1);		
		ListNode *node = [ListNode new];
		[cur val:val1];
		[cur next:node];
		cur = [cur next];
		[node release];
	}
	//print out the linked list 
	cur=head;
	int j = 0;
	for(j = 0; j<size; j++){
		printf("%d \n", [cur val]);
		cur = [cur next];
	}
	[head release];
	[cur release];
//	return 0;
}




