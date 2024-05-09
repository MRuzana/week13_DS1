void main(){
  String str="abdaacdd";
  var char_count=count_char(str);
  char_count.forEach((key, value) {
    print('$key$value');
  });
}
Map<String,int> count_char(String str){
  Map<String,int>char_count={};
  for(int i=0;i<str.length;i++){
    if(char_count.containsKey(str[i])){
      char_count[str[i]]=char_count[str[i]]!+1;
    }
    else{
      char_count[str[i]]=1;
    }
  }
  return char_count;
}


















