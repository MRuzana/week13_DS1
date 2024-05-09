void main(){
  List<int>nums=[1,3,5,7,2,16,2,2,9,2];
  int target=2;
  move_target(nums,target);
}
move_target(List<int>nums,int target){
  List<int>temp=[];
  for(int i=0;i<nums.length;i++){
    if(target==nums[i]){
      temp.add(nums[i]);
    }
  }
  nums.removeWhere((element) => element==target);
  nums.addAll(temp);
  print('newlist = $nums');

}