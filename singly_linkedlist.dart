class Node<T>{
  T? data;
  Node<T>? next;
  Node(this.data);
}
class singlyLinkedlist<T>{
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
    //tail=newNode;
  }
  void displayLinkedlist(){
    Node<T>? current=head;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }
}
void main(){
  singlyLinkedlist list = singlyLinkedlist();
  list.addNode(10);
  list.addNode(20);
  list.displayLinkedlist();
}