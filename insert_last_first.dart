class Node<T>{
  T? data;
  Node<T>? next;
  Node(this.data);
}
class Linkedlist<T>{
  Node<T>? head;
  Node<T>? tail;

  void addFirst(T data){
    Node<T>? newNode=Node(data);
    if(head==null){
      head=newNode;
      tail=newNode;
    }
    else{
      newNode.next=head;
      head=newNode;
    }
  }

  void addLast(T data){
    Node<T>? newNode=Node(data);
    if(head==null){
      head=newNode;
      tail=newNode;
    }
    else{
      tail!.next=newNode;
      tail=newNode;
    }
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
  Linkedlist list=Linkedlist();
  list.display();
  list.addLast(10);
  list.addLast(20);
  list.addLast(30);
  list.addFirst(100);
  list.display();
  
}