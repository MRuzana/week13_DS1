class Node<T>{
  T? data;
  Node<T>? next;
  Node(this.data);
}
class linkedlist<T>{
  Node<T>? head;
  Node<T>? tail;

  void addNode(T data){
    Node<T> newNode=Node(data);
    if(head==null){
      head=newNode;
      tail=newNode;
    }
    else{
      tail!.next=newNode;
      tail=newNode;
    }
  }

  void delete(T data){
    Node<T>? temp=head;
    Node<T>? prev=null;

    if(temp!=null && temp.data==data){
      head=temp.next;
      return;
    }
     while(temp!=null && temp.data!=data){
      prev=temp;
      temp=temp.next;
    }
    if(temp==tail){
      tail=prev;
      temp!.next=null;
    }
    if(temp==null){
      return;
    }
    prev!.next=temp.next;
  }

  void display(){
    Node<T>? current=head;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }
}
void main(){
  linkedlist list=linkedlist();
  list.addNode(20);
  list.addNode(40);
  list.addNode(80);
  list.delete(40);
  list.display();
}