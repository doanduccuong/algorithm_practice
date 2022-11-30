import 'dart:math';

int findMaxConsecutiveOnes(List<int> nums) {
  int count = 0;
  int max = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] == 1) {
      count++;
      if (max < count) {
        max = count;
      }
    } else if (nums[i] == 0) {
      count = 0;
    }
  }
  return max;
}

int findNumbers(List<int> nums) {
  int count = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i].toString().length % 2 == 0) {
      count++;
    }
  }
  return count;
}

List<int> sortedSquares(List<int> nums) {
  final List<int> newList = [];
  for (int i = 0; i < nums.length; i++) {
    newList.add(pow(nums[i], 2).toInt());
  }
  newList.sort((a, b) => a.compareTo(b));
  return newList;
}

void merge(List<int> nums1, int m, List<int> nums2, int n) {
  nums1 = nums1 + nums2;
  nums1.removeWhere((item) => item == 0);
  nums1.sort((a, b) => a.compareTo(b));
}
void duplicateZeros(List<int> arr) {
  for(int i=0;i<arr.length;i++){
    if(arr[i]==0){
      arr.insert(i, 0);
    }
    print(arr);
  }
}
