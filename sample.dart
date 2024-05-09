class Node<T>{
  T? data;
  Node<T>? next;
  Node(this.data);
}

class Linkedlist<T>{
  Node<T>? head;
  Node<T>? tail;

  void addlast(T data){
    Node<T>newnode=Node(data);

    if(head==null){
      head=newnode;
      tail=newnode;
    }
    else{
      tail!.next=newnode;
      tail=newnode;
    }
  }
  void display(){
    Node<T>? current=head;
    while(current!=null){
      print(current.data);
      current=current.next;
    }

  }
  void addfirst(T data){
    Node<T>newnode=Node(data);
    

    if(head==null){
      head=newnode;
      tail=newnode;
    }
    else{
     newnode.next=head;
     head=newnode;
    }
  }
  void after(T nextto,T data){
    Node<T>newnode=Node(data);
    Node<T>? temp=head;

    while(temp!=null && temp.data!=nextto){
      temp=temp.next;
    }
    if(temp==null){
      return;
    }
    if(temp==tail){
      tail!.next=newnode;
      tail=newnode;
      return;

    }
    newnode.next=temp.next;
    temp.next=newnode;
  }
  void sum(){
    Node<T>? current=head;
    int sum=0;
    while(current!=null){
        sum =sum+ (current.data as int)  ;
        current=current.next;
    }
    print('sum = $sum');
  }
}

void main(){
  Linkedlist l=Linkedlist();
  l.addlast(10);
  l.addlast(20);
  l.addlast(11);
  l.addfirst(100);
  l.after(20, 200);
  l.sum();
  l.display();
}