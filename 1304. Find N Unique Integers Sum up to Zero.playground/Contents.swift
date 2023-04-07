/*
 1304. Find N Unique Integers Sum up to Zero

 Given an integer n, return any array containing n unique integers such that they add up to 0.

 Example 1:

 Input: n = 5
 Output: [-7,-1,1,3,4]
 Explanation: These arrays also are accepted [-5,-1,1,2,3] , [-3,-1,2,-2,4].

 Example 2:

 Input: n = 3
 Output: [-1,0,1]

 Example 3:

 Input: n = 1
 Output: [0]

 Constraints:

 1 <= n <= 1000
 */

class Solution {
    // Straight solution with time complexity O(N), where N is length of `n`
    func sumZero(_ n: Int) -> [Int] {
        if n == 1 {
            return [0]
        }
        var resultArray = Array.init(repeating: 0, count: n)
        var number = n / 2
        var counter = 0
        while number > 0 {
            resultArray[counter] = number
            resultArray[counter + 1] = -number
            number -= 1
            counter += 2
        }
        return resultArray
    }
}

var sol = Solution()
assert(sol.sumZero(5) == [2,-2,1,-1,0])
