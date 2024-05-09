class Node<T>{
  T? data;
  Node<T>? next;
  Node(this.data);
}
class linkedlist<T>{
  Node<T>? head;
  Node<T>? tail;
  void addNode(T data){
    Node<T>newNode=Node(data);
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
  linkedlist list=linkedlist();
  List<int>array=[2,4,6,8];
  print('Array =$array');
  for(int element in array){
    list.addNode(element);
  }
  list.display();
}