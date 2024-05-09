void main() {
  List<int> nums = [1, 3, 5, 2, 6];
  int target = 3;
  var result = twoSum(nums, target);
  print(result);
}
List<int>?twoSum(List<int>nums,int target){
  Map<int,int>seen={};
  for(int i=0;i<nums.length;i++){
    int diff=target-nums[i];
    if(seen.containsKey(diff)){
      return [seen[diff]!,i];

    }else{
      seen[nums[i]]=i;
    }
  }
  return null;
}
