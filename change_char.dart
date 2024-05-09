void main(){
  String str="zzz";
  int key=2;
  int newkey=key%26;
  var result=change_char(str, newkey);
  print('Entered string = $str');
  print('Changed String = ${result.join()}');
}
List<String> change_char(String str,int newkey){
  
  List<String> charlist= [];
  for(int i=0;i<str.length;i++){
    int letterPosistion=str.codeUnitAt(i) + newkey;
    if(letterPosistion<=122){
      charlist.add(String.fromCharCode(letterPosistion));
    }
    else{
       charlist.add(String.fromCharCode(96+letterPosistion%122));
    }
  }
  return charlist;
}