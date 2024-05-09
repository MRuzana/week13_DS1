 class Node<T>{
  T? data;
  Node<T>? next;
  Node(this.data);
}
class Linkedlist<T>{
  Node<T>? head;
  Node<T>? tail;

  void addnode(T data){
    Node<T> newnode=Node(data);
    if(head==null){
      head=newnode;
      tail=newnode;
    }
    else{
      tail!.next=newnode;
      tail=newnode;
    }

  }

  void inserfirst(T data){
    Node<T>newnode=Node(data);
    newnode.next=head;
    head=newnode;

  }
  void delete(T data){
    Node<T>? temp=head;
    Node<T>? prev=null;
    
    
    if(temp!=null && temp.data==data){
      head = temp.next;
      return;
    }
    while(temp!=null && temp.data!=data){
      prev=temp;
      temp=temp.next;
    }
    if(temp==null){
      return;
    }
    if(temp==tail){
      tail=prev;
      tail!.next=null;
      return;
    }
    prev!.next=temp.next; 

  }
  // void insertlast(T data){
  //   Node <T>?newnode=Node(data);
  //   if(head==null){
  //     head=newnode;
  //     return;
  //   }
  //   Node<T>? current=head;
  //   while(current!.next!=null){
  //     current=current.next;
  //   }
  //   current.next=newnode;

  // }
  void printlist(){
    Node<T>? current=head;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }
    
}
void main(){
  Linkedlist linkedlist=Linkedlist();
  linkedlist.addnode(10);
  linkedlist.addnode(20);
   linkedlist.addnode(30);
   linkedlist.delete(30);

  // linkedlist.inserfirst(3);
  // linkedlist.insertlast(5);
  // linkedlist.inserfirst(1);
  // linkedlist.insertlast(7);
  linkedlist.printlist();
}
