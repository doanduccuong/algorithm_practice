import 'dart:ffi';
import 'dart:math';

class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

List<int> twoSum(List<int> nums, int target) {
  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] == target) return [i, j];
    }
  }
  return [];
}

ListNode? addTwoNumbers(ListNode? l1, ListNode? l2, {int? value}) {
  final nextNode1 = l1?.next;
  final nextNode2 = l2?.next;
  int sum = ((l1?.val ?? 0) + (l2?.val ?? 0) + (value ?? 0)) % 10;
  print("${l1?.val}+${l2?.val}=${sum}");
  if ((l1?.val ?? 0) + (l2?.val ?? 0) + (value ?? 0) > 9) {
    return ListNode(sum, addTwoNumbers(nextNode1, nextNode2, value: 1));
  }
  if (nextNode1 == null && nextNode2 == null) return ListNode(sum);

  return ListNode(sum, addTwoNumbers(nextNode1, nextNode2));
}

int lengthOfLongestSubstring(String s) {
  List<String> visitedList = [];
  int maxLength = 1;
  for (int i = 0; i < s.length; i++) {
    visitedList.clear();
    visitedList.add(s[i]);
    for (int j = i + 1; j < s.length; j++) {
      if (!visitedList.contains(s[j])) {
        visitedList.add(s[j]);
        if (maxLength < visitedList.length) {
          maxLength = visitedList.length;
        }
      } else {
        if (maxLength < visitedList.length) {
          maxLength = visitedList.length;
        }
        break;
      }
    }
  }
  return maxLength;
}

double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
  List<int> combineList = nums1 + nums2;
  combineList.sort((a, b) => a.compareTo(b));
  final combineListLength = combineList.length;
  final midIndex = combineListLength ~/ 2;
  if (combineListLength % 2 != 0) return combineList[midIndex].toDouble();
  return ((combineList[midIndex] + combineList[midIndex - 1]) / 2);
}

String longestPalindrome(String s) {
  String maxRepeatSubString = s[0];
  for (int i = 0; i < s.length - 1; i++) {
    for (int j = 0; j < s.length + 1; j++) {
      String subString = s.substring(i, j);
      String reverseSubString = subString.split('').reversed.join();
      if (subString == reverseSubString) {
        if (maxRepeatSubString.length < subString.length) {
          maxRepeatSubString = subString;
        }
      }
    }
  }
  return maxRepeatSubString;
}

String convert(String s, int numRows) {
  if (s.isEmpty || numRows <= 0) {
    return "";
  }
  if (numRows == 1) {
    return s;
  }
  String result = "";
  int step = 2 * numRows - 2;
  for (int i = 0; i < numRows; i++) {
    // Loop for each character in the row
    for (int j = i; j < s.length; j += step) {
      result = result + s[j];
      if (i != 0 && i != numRows - 1 && (j + step - 2 * i) < s.length) {
        result = result + s[j + step - 2 * i];
      }
    }
  }
  print(result);
  return result;
}

int reverse(int x) {
  int value = 0;
  List<int> converToBinary(int value) {
    if (value < 0) value = value.abs();
    int a = value ~/ 2;
    int b = value % 2;
    if (a == 0) return [1];
    return [b, ...converToBinary(a)];
  }

  var binaryNumberList = converToBinary(x);
  var additionalList =
      List.generate(16 - binaryNumberList.length, (index) => 0);
  binaryNumberList = additionalList + binaryNumberList;
  print(binaryNumberList);
  if (x > 0) {
    value = 0;
    for (int i = 15; i >= 0; i--) {
      if (binaryNumberList[i] == 1) value = value + pow(2, 16 - i).toInt();
    }
    print(value);
    return value;
  } else {
    for (int i = 0; i < binaryNumberList.length; i++) {
      if (binaryNumberList[i] == 0) {
        binaryNumberList[i] = 1;
      } else {
        binaryNumberList[i] = 0;
      }
    }
    for (int i = binaryNumberList.length - 1; i >= 0; i--) {
      if (binaryNumberList[i] == 0) {
        binaryNumberList[i] == 1;
        break;
      } else {
        binaryNumberList[i] = 0;
      }
    }
  }
  return 0;
}

bool isPalindrome(int x) {
  if (x < 0) return false;
  var a = x.toString().split("").toList();
  var reverseList = a.reversed.toList();
  print(reverseList);
  print(a);
  print(a == reverseList);
  return a == reverseList;
}

void reverseString(List<String> s) {
  String temp = "";
  for (int i = 0; i < s.length / 2; i++) {
    temp = s[i];
    s[i] = s[s.length - i - 1];
    s[s.length - i - 1] = temp;
  }
}

ListNode? swapPairs(ListNode? head) {
  if (head == null || head.next == null) {
    return head;
  }

  ListNode second = ListNode(head.val);
  ListNode first = ListNode(head.next?.val ?? 0);
  first.next = second;

  ListNode? recursedList = swapPairs(head.next?.next);

  first.next?.next = recursedList;

  return first;
}

ListNode? reverseList(ListNode? head) {
  if (head?.val == null || head?.next == null) return head;
  ListNode? prev;
  ListNode? current = head;
  ListNode? next = null;
  while (current != null) {
    next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }
  head = prev;
  return head;
}

TreeNode? searchBST(TreeNode? root, int val) {
  if (root?.val == val) return root;
  if (root?.val == null) return null;
  if (root?.val != val) {
    if (searchBST(root?.right, val) == null) {
      return searchBST(root?.left, val);
    }
  }
}
