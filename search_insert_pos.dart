void main(){
  List<int>nums=[1,3,5,6];
  int target=5;
  int index = search_pos(nums,target);
  print(index);

}
int search_pos(List<int>nums,target){
  if(nums.contains(target)){
    int index = nums.indexOf(target);
    print(nums);
    return index;
  }
  else{
    nums.add(target);
    nums.sort();
    int index= nums.indexOf(target);
    print(nums);
    return index;
  }
}