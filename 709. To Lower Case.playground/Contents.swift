/*
 709. To Lower Case

 Given a string s, return the string after replacing every uppercase letter with the same lowercase letter.

 Example 1:

 Input: s = "Hello"
 Output: "hello"

 Example 2:

 Input: s = "here"
 Output: "here"

 Example 3:

 Input: s = "LOVELY"
 Output: "lovely"

 Constraints:

 1 <= s.length <= 100
 s consists of printable ASCII characters.
 */

class Solution {
    // One liner solution with time complexity O(N)
    func toLowerCase(_ s: String) -> String {
        return s.lowercased()
    }
}

var sol = Solution()

assert(sol.toLowerCase("ABCDE") == "abcde")
assert(sol.toLowerCase("AbCdE") == "abcde")
assert(sol.toLowerCase("abcde") == "abcde")
