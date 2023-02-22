/*
 412. Fizz Buzz

 Given an integer n, return a string array answer (1-indexed) where:

 answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
 answer[i] == "Fizz" if i is divisible by 3.
 answer[i] == "Buzz" if i is divisible by 5.
 answer[i] == i (as a string) if none of the above conditions are true.

 Example 1:

 Input: n = 3
 Output: ["1","2","Fizz"]

 Example 2:

 Input: n = 5
 Output: ["1","2","Fizz","4","Buzz"]

 Example 3:

 Input: n = 15
 Output: ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]

 Constraints:

 1 <= n <= 104
*/

class Solution {
    // straight approach with if else statement
    // time complexity: O(n)
    func fizzBuzz(_ n: Int) -> [String] {
        var result: [String] = []
        for i in 1...n {
            if i % 3 == 0 && i % 5 == 0 {
                result.append("FizzBuzz")
            } else if i % 5 == 0 {
                result.append("Buzz")
            } else if i % 3 == 0 {
                result.append("Fizz")
            } else {
                result.append("\(i)")
            }
        }
        return result
    }

    // more elegant approach with switch statement
    // time complexity O(n)
    func fizzBuzz2(_ n: Int) -> [String] {
        var result: [String] = []
        for i in 1...n {
            switch i {
            case let i where i % 3 == 0 && i % 5 == 00:
                result.append("FizzBuzz")
            case let i where i % 3 == 0:
                result.append("Fizz")
            case let i where i % 5 == 0:
                result.append("Buzz")
            default:
                result.append("\(i)")
            }
        }
        return result
    }
}

let sol = Solution()
sol.fizzBuzz(15)
sol.fizzBuzz2(15)
