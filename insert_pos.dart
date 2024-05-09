void main(){
  List<int>nums=[3,4,5,6,9,10];
  int target=8;
  int res = search_pos(nums,target);
  print('posistion of target element = $res');
}
  search_pos(List<int>nums,int target){
  
  if(nums.contains(target)){
    int index=nums.indexOf(target);
    return index;
  }
  else{
    nums.add(target);
    nums.sort();
    int index=nums.indexOf(target);
    return index;
  }
}