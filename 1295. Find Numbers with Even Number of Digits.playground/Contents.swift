/*
 1295. Find Numbers with Even Number of Digits

 Given an array nums of integers, return how many of them contain an even number of digits.

 Example 1:

 Input: nums = [12,345,2,6,7896]
 Output: 2
 Explanation:
 12 contains 2 digits (even number of digits).
 345 contains 3 digits (odd number of digits).
 2 contains 1 digit (odd number of digits).
 6 contains 1 digit (odd number of digits).
 7896 contains 4 digits (even number of digits).
 Therefore only 12 and 7896 contain an even number of digits.
 Example 2:

 Input: nums = [555,901,482,1771]
 Output: 1
 Explanation:
 Only 1771 contains an even number of digits.


 Constraints:

 1 <= nums.length <= 500
 1 <= nums[i] <= 105
 */

class Solution {
    // Straight solution with creating an array of integers
    // Time compelxity O(N)
    func findNumbers(_ nums: [Int]) -> Int {
        var stringNums: [String] = []
        var counter: Int = 0
        // here we append string elements to our array
        for num in nums {
            stringNums.append(String(num))
        }
        // here we update the counter
        for stringNum in stringNums {
            if stringNum.count % 2 == 0 {
                counter += 1
            }
        }
        return counter
    }
    // one liner solution
    func findNumbers2(_ nums: [Int]) -> Int {
        nums.filter { String($0).count.isMultiple(of: 2)}.count
    }
}

var sol = Solution()
let example = [142,14,54354,7324,83,10]

sol.findNumbers(example)
sol.findNumbers2(example)
