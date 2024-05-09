void main(){
  List<int>nums=[1,3,5,6,2];
  int number=3;
  String result=linear_search(nums, number);
  print(result);
}
String linear_search(List<int>nums, int number){
  for(int i=0;i<nums.length;i++){
    if(nums[i]==number){
      return "Item found";
    }
  }
  return "Not found";
}