void main(){
  List<int>nums=[2,0,1,2,2,3,0,4,2];
  int val =2;
  int count = remove_element(nums,val);
  print('count $count');
}
int remove_element(List<int>nums,int val){
  for(int i=nums.length-1;i>=0;i--){
    if(nums[i]==val){
      nums.removeAt(i);
    }
  }
  print('nums = $nums');
  return nums.length;
}
