/*
 387. First Unique Character in a String

 Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.

 Example 1:

 Input: s = "leetcode"
 Output: 0

 Example 2:

 Input: s = "loveleetcode"
 Output: 2

 Example 3:

 Input: s = "aabb"
 Output: -1

 Constraints:

 1 <= s.length <= 105
 s consists of only lowercase English letters.
 */

class Solution {
    // Solution with dictionary
    // Time complexity O(N), where N is length of `s`
    func firstUniqChar(_ s: String) -> Int {
        guard !s.isEmpty else { return -1 }
        guard s.count > 1 else { return 0 }

        var dictS: [Character:Int] = [:]

        for char in s {
            dictS[char,default: 0] += 1
        }

        for (i,char) in s.enumerated() {
            guard dictS[char] == 1 else { continue }
            return i
        }
        return -1
    }
}

var sol = Solution()
assert(sol.firstUniqChar("leetcode") == 0)
assert(sol.firstUniqChar("loveleetcode") == 2)
