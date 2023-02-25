/*
 169. Majority Element

 Given an array nums of size n, return the majority element.

 The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.



 Example 1:

 Input: nums = [3,2,3]
 Output: 3
 Example 2:

 Input: nums = [2,2,1,1,1,2,2]
 Output: 2


 Constraints:

 n == nums.length
 1 <= n <= 5 * 104
 -109 <= nums[i] <= 109
 */

class Solution {
    // Solution with dictionary
    // Time Complexity O(N)
    func majorityElement(_ nums: [Int]) -> Int {
        var dict: [Int : Int] = [:]
        for num in nums {
            dict[num, default: 0] += 1
        }
        var intMaxResult = dict.values.max()
        var result: Int = 0
        for (key, val) in dict where val == intMaxResult {
            result = key
        }
        return result
    }
}

let sol = Solution()
sol.majorityElement([1,2,3,3,3,4])
