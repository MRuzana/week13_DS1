void main(){

  int result=factorial(5);
  print('5!= $result');

}
factorial(int n){
  if(n<=1){
    return 1;
  }
  return n*factorial(n-1);
}
