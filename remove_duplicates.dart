class Node<T>{
  T? data;
  Node<T>? next;
  Node(this.data);
}
class Linkedlist<T>{
  Node<T>? head;
  Node<T>? tail;

  void addNode(T data){
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
  void remove_duplicates(){
    print('removed duplicates');

    Node<T>? current=head;

    while(current!=null){
      Node<T>? next=current.next;
      while(next!=null && next.data==current.data){
        next=next.next;
      }
      current.next=next;
      if(next==tail && current.data==next!.data){
        tail=current;
        tail!.next=null;
      }
      current=next;

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
  list.addNode(10);
  list.addNode(20);
  list.addNode(20);
  list.addNode(30);
  list.addNode(30);
  list.display();
  list.remove_duplicates();
  list.display();
  
}