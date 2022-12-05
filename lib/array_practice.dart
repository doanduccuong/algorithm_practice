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

int removeDuplicates(List<int> nums) {
  final initialLength = nums.length;
  var seen = <int>{};
  nums = nums.where((element) => seen.add(element)).toList();
  final afterLength = nums.length;
  while (nums.length < initialLength) {
    nums.add(101);
  }
  print(nums);
  return afterLength;
}

bool checkIfExist(List<int> arr) {
  arr.sort((a, b) => a.abs().compareTo(b.abs()));
  for (int i = 0; i < arr.length; i++) {
    for (int j = i + 1; j < arr.length; j++) {
      print("${arr[i]} ${arr[j]}");
      if (arr[i] * 2 == arr[j]) {
        return true;
      }
    }
  }
  return false;
}

bool validMountainArray(List<int> arr) {
  int maxValue = arr[0];
  int maxValuePosition = 0;
  if (arr.length == 2) return false;
  for (int i = 0; i < arr.length - 1; i++) {
    if (arr[i] == arr[i + 1]) return false;
    if (arr[i] < arr[i + 1]) {
      if (arr[i + 1] > maxValue) {
        maxValue = arr[i + 1];
        maxValuePosition = i + 1;
      }
    }
  }
  if (maxValuePosition == arr.length - 1) return false;
  if (maxValuePosition == 0) return false;
  for (int i = 0; i < maxValuePosition - 1; i++) {
    if (arr[i] >= arr[i + 1]) return false;
  }
  for (int i = maxValuePosition; i < arr.length - 1; i++) {
    if (arr[i] <= arr[i + 1]) return false;
  }

  return true;
}

List<int> replaceElements(List<int> arr) {
  int maxValue = arr[arr.length - 1];

  if (arr.length == 1) return [-1];
  for (int i = 0; i < arr.length - 1; i++) {
    maxValue = arr[arr.length - 1];
    for (int j = i + 1; j < arr.length - 1; j++) {
      if (arr[j] > maxValue) {
        // print("${arr[j]} and ${arr[j+1]}");
        maxValue = arr[j];
      }
    }
    arr[i] = maxValue;
  }
  arr[arr.length - 1] = -1;

  return arr;
}

int dupliacte(List<int> nums) {
  // Check for edge cases.
  if (nums == null) {
    return 0;
  }

  // Use the two pointer technique to remove the duplicates in-place.
  // The first element shouldn't be touched; it's already in its correct place.
  int writePointer = 1;
  // Go through each element in the Array.
  for (int readPointer = 1; readPointer < nums.length; readPointer++) {
    // If the current element we're reading is *different* to the previous
    // element...
    if (nums[readPointer] != nums[readPointer - 1]) {
      // Copy it into the next position at the front, tracked by writePointer.
      nums[writePointer] = nums[readPointer];
      // And we need to now increment writePointer, because the next element
      // should be written one space over.
      writePointer++;
    }
  }
  // This turns out to be the correct length value.
  return writePointer;
}

void moveZeroes(List<int> nums) {
  int writePointer = 1;
  for (int readPointer = 0; readPointer < nums.length; readPointer++) {
    if (nums[readPointer] == 0) {
      writePointer = readPointer;
      for (int i = readPointer; i < nums.length; i++) {
        if (nums[i] != 0) {
          nums[writePointer] = nums[i];
          writePointer++;
          nums[i] = 0;
        }
      }
      break;
    }
  }
}

List<int> sortArrayByParity(List<int> nums) {
  int writePointer = 0;
  int temps = 0;
  for (int readPointer = 0; readPointer < nums.length; readPointer++) {
    if (nums[readPointer] % 2 == 0) {
      temps = nums[writePointer];
      nums[writePointer] = nums[readPointer];
      nums[readPointer] = temps;
      writePointer++;
    }
  }
  return nums;
}
int removeElement(List<int> nums, int val) {
  int writePointer = 1;
  for (int readPointer = 0; readPointer < nums.length; readPointer++) {
    if (nums[readPointer] == val) {
      writePointer = readPointer;
      for (int i = readPointer; i < nums.length; i++) {
        if (nums[i] != val) {
          nums[writePointer] = nums[i];
          writePointer++;
          nums[i] = val;
        }
      }
      break;
    }
  }
  print(writePointer);

  return writePointer;
}
