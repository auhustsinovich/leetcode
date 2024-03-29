/*
 905. Sort Array By Parity

 Given an integer array nums, move all the even integers at the beginning of the array followed by all the odd integers.

 Return any array that satisfies this condition.

 Example 1:

 Input: nums = [3,1,2,4]
 Output: [2,4,3,1]
 Explanation: The outputs [4,2,3,1], [2,4,1,3], and [4,2,1,3] would also be accepted.

 Example 2:

 Input: nums = [0]
 Output: [0]

 Constraints:

 1 <= nums.length <= 5000
 0 <= nums[i] <= 5000
 */

class Solution {
    // Straight solution with filter function
    // Time complexity O(N), where N is length of `nums`
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var evens = nums.filter { $0.isMultiple(of: 2)  }
        var odds =  nums.filter { !$0.isMultiple(of: 2) }
        return evens + odds
    }
    // One liner solution
    func sortArrayByParity2(_ A: [Int]) -> [Int] {
        return A.sorted(by: { return $0 % 2 == 0 && $1 % 2 == 1 })
    }
}

var sol = Solution()
sol.sortArrayByParity([4,1,3,2])
sol.sortArrayByParity2([4,1,3,2])
