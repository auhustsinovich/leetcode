/*
 2535. Difference Between Element Sum and Digit Sum of an Array

 You are given a positive integer array nums.

 The element sum is the sum of all the elements in nums.
 The digit sum is the sum of all the digits (not necessarily distinct) that appear in nums.
 Return the absolute difference between the element sum and digit sum of nums.

 Note that the absolute difference between two integers x and y is defined as |x - y|.

 Example 1:

 Input: nums = [1,15,6,3]
 Output: 9
 Explanation:
 The element sum of nums is 1 + 15 + 6 + 3 = 25.
 The digit sum of nums is 1 + 1 + 5 + 6 + 3 = 16.
 The absolute difference between the element sum and digit sum is |25 - 16| = 9.

 Example 2:

 Input: nums = [1,2,3,4]
 Output: 0
 Explanation:
 The element sum of nums is 1 + 2 + 3 + 4 = 10.
 The digit sum of nums is 1 + 2 + 3 + 4 = 10.
 The absolute difference between the element sum and digit sum is |10 - 10| = 0.

 Constraints:

 1 <= nums.length <= 2000
 1 <= nums[i] <= 2000
 */

class Solution {
    // Straight solution with time complexity O(N), where N is legnth of `nums`
    func differenceOfSum(_ nums: [Int]) -> Int {
        var sumOfNums = nums.reduce(0) { $0 + $1 }
        var sumOfDigits = 0

        for num in nums {
            var number = num
            while number > 0 {
                sumOfDigits += number % 10
                number /= 10
            }
        }
        return sumOfNums - sumOfDigits
    }
}

var sol = Solution()

assert(sol.differenceOfSum([20, 5, 8 ,3]) == 18)
assert(sol.differenceOfSum([10, 14, 1 ,2]) == 18)
assert(sol.differenceOfSum([6, 35, 6 ,51]) == 72)
