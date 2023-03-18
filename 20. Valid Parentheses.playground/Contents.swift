/*
 20. Valid Parentheses

 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Every close bracket has a corresponding open bracket of the same type.

 Example 1:

 Input: s = "()"
 Output: true
 Example 2:

 Input: s = "()[]{}"
 Output: true
 Example 3:

 Input: s = "(]"
 Output: false

 Constraints:

 1 <= s.length <= 104
 s consists of parentheses only '()[]{}'.
 */

class Solution {
    // Approach with switch case with time complexity O(N), where N is length of `s`
    func isValid(_ s: String) -> Bool {
        guard !s.isEmpty else { return false }
        var stack: [Character] = []

        for bracket in s {
            switch bracket {
            case "(":
                stack.append(")")
            case "{":
                stack.append("}")
            case "[":
                stack.append("]")
            default:
                guard bracket == stack.popLast() else { return false }
            }
        }
        return stack.isEmpty
    }
}

var sol = Solution()
sol.isValid("[]")
sol.isValid("{}{{}}")
sol.isValid("({({})}[]")
