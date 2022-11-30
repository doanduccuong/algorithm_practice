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
  int i = m - 1, j = n - 1;
  while (i >= 0 && j >= 0) {
    if (nums1[i] >= nums2[j]) {
      nums1[i + j + 1] = nums1[i];
      i--;
    } else {
      nums1[i + j + 1] = nums2[j];
      j--;
    }
  }
  while (j >= 0) {
    nums1[i + j + 1] = nums2[j];
    j--;
  }
}

void duplicateZeros(List<int> arr) {
  int zeros = 0;
  for (int a in arr) {
    if (a == 0) {
      ++zeros;
    }
  }

  for (int i = arr.length - 1, j = arr.length + zeros - 1; i < j; --i, --j) {
    if (j < arr.length) {
      arr[j] = arr[i];
    }
    if (arr[i] == 0 && --j < arr.length) {
      arr[j] = arr[i];
    }
  }
}
int removeElement(List<int> nums, int val) {
  int count=0;
  for(int i=0;i<nums.length;i++){
    if(nums[i]!=val){
      count++;
    }
  }
  return count;
}
