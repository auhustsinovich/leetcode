/* 1342. Number of Steps to Reduce a Number to Zero

 Given an integer num, return the number of steps to reduce it to zero.
 In one step, if the current number is even, you have to divide it by 2, otherwise, you have to subtract 1 from it.

 Example 1:

 Input: num = 14
 Output: 6
 Explanation:
 Step 1) 14 is even; divide by 2 and obtain 7.
 Step 2) 7 is odd; subtract 1 and obtain 6.
 Step 3) 6 is even; divide by 2 and obtain 3.
 Step 4) 3 is odd; subtract 1 and obtain 2.
 Step 5) 2 is even; divide by 2 and obtain 1.
 Step 6) 1 is odd; subtract 1 and obtain 0.
 Example 2:

 Input: num = 8
 Output: 4
 Explanation:
 Step 1) 8 is even; divide by 2 and obtain 4.
 Step 2) 4 is even; divide by 2 and obtain 2.
 Step 3) 2 is even; divide by 2 and obtain 1.
 Step 4) 1 is odd; subtract 1 and obtain 0.
 Example 3:

 Input: num = 123
 Output: 12
 */

// Straight solution
// Complexity = O(N)

class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        // We create result Integer and a counter of steps
        var result = num
        var counter = 0
        while result != 0 {
            counter += 1
            if result % 2 == 0 {
                result /= 2
            } else {
                result -= 1
            }
        }
        return counter
    }

    // Same approach but with ternary operator
    // Complexity: O(N)
    // p.s. we can use inout parameter num without creating counter
    func numberOfSteps2(_ num: Int) -> Int {
        // We create result Integer and a counter of steps
        var result = num
        var counter = 0
        while result != 0 {
            result = result % 2 == 0 ? result / 2 : result - 1
            counter += 1
        }
        return counter
    }
}

var sol = Solution()
var exampleInt = 123

sol.numberOfSteps(exampleInt)
sol.numberOfSteps2(exampleInt)
