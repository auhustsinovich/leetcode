/*
 383. Ransom Note

 Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.

 Each letter in magazine can only be used once in ransomNote.

 Example 1:

 Input: ransomNote = "a", magazine = "b"
 Output: false

 Example 2:

 Input: ransomNote = "aa", magazine = "ab"
 Output: false

 Example 3:

 Input: ransomNote = "aa", magazine = "aab"
 Output: true

 Constraints:

 1 <= ransomNote.length, magazine.length <= 105
 ransomNote and magazine consist of lowercase English letters.
 */

class Solution {
    // Approach with creating 2 dictionaries and comparing one with another
    // Space complexity - O(N)
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var ransomDict: [Character: Int] = [:]
        var magazineDict: [Character: Int] = [:]

        var result: Bool = true

        for ransom in ransomNote {
            ransomDict[ransom, default: 0] += 1
        }
        for ransom in magazine {
            magazineDict[ransom, default: 0] += 1
        }

        for (char,count) in ransomDict {
            if let magazineCount = magazineDict[char], magazineCount >= count {
                continue
            } else {
                result = false
                break
            }
        }
        return result
    }
}

let sol = Solution()
sol.canConstruct("aabbbcc", "aabbbdddccceee")
sol.canConstruct("abc", "ab")

