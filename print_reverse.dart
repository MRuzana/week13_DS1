class Node<T>{
  T? data;
  Node<T>? next;
  Node(this.data);
}
class Linkedlist<T>{
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
  void display_order(){
    print('forward order');
    Node<T>? current=head;
    while(current!=null){
      print(current.data);
      current=current.next;

    }
  }
  void display_reverse() {
    print('reverse order');
    Node<T>? current= head;
    var stack=[];

  while(current!=null){
    stack.add(current.data);
    current=current.next;
  }
  while(stack.isNotEmpty){
    print(stack.removeLast());
  }
}
}
void main(){
  Linkedlist list=Linkedlist();
  list.addNode(10);
  list.addNode(20);
  list.addNode(30);
  list.display_order();
  list.display_reverse();
}