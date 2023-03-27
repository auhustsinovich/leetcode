/*
 392. Is Subsequence

 Given two strings s and t, return true if s is a subsequence of t, or false otherwise.

 A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).

 Example 1:

 Input: s = "abc", t = "ahbgdc"
 Output: true

 Example 2:

 Input: s = "axc", t = "ahbgdc"
 Output: false

 Constraints:

 0 <= s.length <= 100
 0 <= t.length <= 104
 s and t consist only of lowercase English letters.
 */

class Solution {
    // Time complexity: O(N), where N is length of t
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        let sArray = Array(s)
        var index = 0

        for char in t {
            guard index < sArray.count, sArray[index] == char else { continue }
            index += 1
        }
        return index == sArray.count
    }
}

var sol = Solution()

assert(sol.isSubsequence("abc", "agdbc" ) == true)
assert(sol.isSubsequence("abc", "aglfsdbs" ) == false)
assert(sol.isSubsequence("abc", "acd" ) == false)
