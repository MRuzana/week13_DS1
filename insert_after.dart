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
  void insert_before(T before,T data){
    Node<T>? newNode=Node(data);
    Node<T>? temp=head;
    Node<T>? prev;

    if(temp==null){
      head=newNode;
      return;
    }
    while(temp!=null && temp.data!=before){
      prev = temp;
      temp = temp.next;
    }
    if (prev == null) { // Inserting before the head
      newNode.next = head;
      head = newNode;
    } else {
      newNode.next = temp;
      prev.next = newNode;
  }

  }
  void insert_after(T nextTo,T data){
    Node<T>? newNode=Node(data);
    Node<T>? temp=head;

    while(temp!=null && temp.data!=nextTo){
      temp=temp.next;
    }
    if(temp==null){
      return;
    }
    if(temp==tail){
      tail!.next=newNode;
      tail=newNode;
      return;
    }
    newNode.next=temp.next;
    temp.next=newNode;

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
  list.addNode(10);
  list.addNode(20);
  list.addNode(40);
  list.insert_after(10, 100);
  list.insert_before(10, 400);
  list.display();
}