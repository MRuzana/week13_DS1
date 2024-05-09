void main(){
  String str="hello";
  String rev="";
  for(int i=str.length-1;i>=0;i--){
    rev=rev+str[i];
  }
  print('string = $str');
  print('reversed String = $rev');
}



