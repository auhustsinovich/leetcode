/*
 205. Isomorphic Strings

 Given two strings s and t, determine if they are isomorphic.

 Two strings s and t are isomorphic if the characters in s can be replaced to get t.

 All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character, but a character may map to itself.

 Example 1:

 Input: s = "egg", t = "add"
 Output: true

 Example 2:

 Input: s = "foo", t = "bar"
 Output: false

 Example 3:

 Input: s = "paper", t = "title"
 Output: true

 Constraints:

 1 <= s.length <= 5 * 104
 t.length == s.length
 s and t consist of any valid ascii character.
 */

class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }

        var dictS: [Character: Character] = [:]
        var dictT: [Character: Character] = [:]

        let sArray = Array(s)
        let tArray = Array(t)

        for i in 0..<s.count {
            let sChar = sArray[i]
            let tChar = tArray[i]

            if let mappedSChar = dictS[sChar], mappedSChar != tChar {
                return false
            }

            if let mappedTChar = dictT[tChar], mappedTChar != sChar {
                return false
            }
            dictS[sChar] = tChar
            dictT[tChar] = sChar
        }
        return true
    }
}

var sol = Solution()
sol.isIsomorphic("fat", "krr") // false
sol.isIsomorphic("for", "fbt") // true
sol.isIsomorphic("egg", "add") // true

assert(sol.isIsomorphic("fat", "krr") == false)
assert(sol.isIsomorphic("boo", "foo") == true)
