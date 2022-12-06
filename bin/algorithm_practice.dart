import 'package:algorithm_practice/array_practice.dart' as array_practice;
import 'package:algorithm_practice/leet_code_problem.dart'
    as leet_code_practice;
import 'package:algorithm_practice/leet_code_problem.dart';

void main(List<String> arguments) {
  // print(array_practice.findMaxConsecutiveOnes([1,1,0,1,1,1]));
  // array_practice.duplicateZeros([1,3,0,4,5,0,6]);
  // array_practice.removeElement([3,2,2,3,3],3);
  // array_practice.removeDuplicates([1,1,2]);
  // // print(array_practice.checkIfExist([-10,12,-20,-8,15]));
  // // print(array_practice.validMountainArray([9,8,7,6,5,4,3,2,1,0]));
  // // print(array_practice.replaceElements([17,18,5,4,6,1]));
  // // print(array_practice.dupliacte([0,0,1,1,1,2,2,3,3,4]));
  // // array_practice.moveZeroes([1,2,0,4,0,5]);
  // // print(array_practice.sortArrayByParity([3,1,2,4]));
  // array_practice.removeElement([0,1,2,2,3,0,4,2],2);
  // print(leet_code_practice.twoSum([2,7,11,15], 9));
  final l1 = ListNode(2, ListNode(4, ListNode(3,ListNode(6))));
  final l2 = ListNode(5, ListNode(6, ListNode(4)));
  final r1=TreeNode(4,TreeNode(2,TreeNode(1),TreeNode(3)),TreeNode(7));
  // print(leet_code_practice.addTwoNumbers(l1, l2)?.val);
  // print(leet_code_practice.findMedianSortedArrays([1,2],[3,4]));
  // print(leet_code_practice.searchBST(r1,2)?.val);
  print(leet_code_practice.myPow(2.0000,12));
}

