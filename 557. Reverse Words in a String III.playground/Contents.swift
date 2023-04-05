/*
 557. Reverse Words in a String III

 Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.

 Example 1:

 Input: s = "Let's take LeetCode contest"
 Output: "s'teL ekat edoCteeL tsetnoc"
 Example 2:

 Input: s = "God Ding"
 Output: "doG gniD"

 Constraints:

 1 <= s.length <= 5 * 104
 s contains printable ASCII characters.
 s does not contain any leading or trailing spaces.
 There is at least one word in s.
 All the words in s are separated by a single space.
 */

class Solution {
    // Straight solution with time complexity O(N), where N is length of `s`
    func reverseWords(_ s: String) -> String {
        let words = s.split(separator: " ")
        let reversedWords = words.map { String($0.reversed())}
        let stringResult = reversedWords.joined(separator: " ")
        return stringResult
    }
}

var sol = Solution()
assert(sol.reverseWords("This is my example!") == "sihT si ym !elpmaxe")
