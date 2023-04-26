/*
 1768. Merge Strings Alternately

 You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.

 Return the merged string.

 Example 1:

 Input: word1 = "abc", word2 = "pqr"
 Output: "apbqcr"
 Explanation: The merged string will be merged as so:
 word1:  a   b   c
 word2:    p   q   r
 merged: a p b q c r

 Example 2:

 Input: word1 = "ab", word2 = "pqrs"
 Output: "apbqrs"
 Explanation: Notice that as word2 is longer, "rs" is appended to the end.
 word1:  a   b
 word2:    p   q   r   s
 merged: a p b q   r   s

 Example 3:

 Input: word1 = "abcd", word2 = "pq"
 Output: "apbqcd"
 Explanation: Notice that as word1 is longer, "cd" is appended to the end.
 word1:  a   b   c   d
 word2:    p   q
 merged: a p b q c   d

 Constraints:

 1 <= word1.length, word2.length <= 100
 word1 and word2 consist of lowercase English letters.
 */

import UIKit

class Solution {
    // Straight solution with time complexity O(N), where N is length of mergedString
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var mergedString = ""
        var index1 = 0
        var index2 = 0

        while index1 < word1.count || index2 < word2.count {
            if index1 < word1.count {
                mergedString.append(word1[word1.index(word1.startIndex, offsetBy: index1)])
                index1 += 1
            }

            if index2 < word2.count {
                mergedString.append(word2[word2.index(word2.startIndex, offsetBy: index2)])
                index2 += 1
            }
        }
        return mergedString
    }
}

var sol = Solution()
assert(sol.mergeAlternately("abcd", "pq") == "apbqcd")
