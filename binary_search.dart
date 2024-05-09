// void main(){
//   List<int>nums=[0,2,4,7,9,11,14,15];
//   int search_element=4;
//   String result =binary_search(nums, search_element);
//   print(result);
// }
// String binary_search(List<int>nums,int search_element){
//   int min=0;
//   int max=nums.length-1;
//   while(min<=max){
//     int mid = (min+max)~/2;
//     if(search_element==nums[mid]){
//       return 'Number ${nums[mid]} found at posistion $mid';
//     }
//     else if(search_element>nums[mid]){
//       min=mid+1;
//     }
//     else{
//       max=mid-1;
//     }
//   }
//   return 'Not found';
// }

void main(){
  List<int>nums=[1,2,3,4,8,9];
  int searchvalue=80;
  var value= binarySearch(nums: nums,searchvalue: searchvalue,start_posistion: 0,end_posistion: nums.length-1);
  print('$searchvalue found at posistion $value');
}
binarySearch(
  {
    required List<int>nums, 
    required int searchvalue, 
    required start_posistion,
    required end_posistion
  }
) {
    int mid=(start_posistion+end_posistion)~/2;
    if(searchvalue==nums[mid]){
      return mid;
    }
    if(searchvalue>nums[mid]){
      return binarySearch(
        nums: nums, 
        searchvalue: searchvalue, 
        start_posistion: mid+1, 
        end_posistion: end_posistion);
    }
    if(searchvalue<nums[mid]){
      return binarySearch(
        nums: nums, 
        searchvalue: searchvalue, 
        start_posistion: start_posistion, 
        end_posistion: mid-1);
    }
    return -1;
  }
    
    
  