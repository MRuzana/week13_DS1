void main(){
  int result=sum(5);
  print('sum of first 5 numbers= $result');
}
sum(int n){
  if(n==1){
    return 1;
  }
  return n+sum(n-1);

}