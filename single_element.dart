void main(){
  List<int>nums=[2,2,1];
  int? count = single_number(nums);
  print(count);
}
int? single_number(List<int>nums){
 Map<int,int>count={};
 for(int num in nums){
  count[num]=(count[num]??0)+1;
 }
 for(int num in count.keys){
  if(count[num]==1){
    return num;
  }
 }
 return null;
}