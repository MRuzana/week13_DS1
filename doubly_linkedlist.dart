class Node<T>{
  T? data;
  Node<T>? next;
  Node<T>? prev;
  Node(this.data);
}

class doublyLinkedlist<T>{
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
      newNode.prev=tail;
      tail=newNode;
    }
  }
  void displayNode_forward(){
    print('forward list');
    Node<T>? current=head;
    while(current!=null){
      print(current.data);
      current=current.next;
    }
  }
  void display_backward(){
    print('backward list');
    Node<T>? current=tail;
    while(current!=null){
      print(current.data);
      current=current.prev;
    }
  }

}
void main(){
  doublyLinkedlist doublylist=doublyLinkedlist();
  doublylist.addNode(10);
  doublylist.addNode(20);
  doublylist.addNode(30);
  doublylist.displayNode_forward();
  doublylist.display_backward();
}