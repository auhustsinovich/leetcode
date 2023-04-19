/*
 1678. Goal Parser Interpretation

 You own a Goal Parser that can interpret a string command. The command consists of an alphabet of "G", "()" and/or "(al)" in some order. The Goal Parser will interpret "G" as the string "G", "()" as the string "o", and "(al)" as the string "al". The interpreted strings are then concatenated in the original order.

 Given the string command, return the Goal Parser's interpretation of command.

 Example 1:

 Input: command = "G()(al)"
 Output: "Goal"
 Explanation: The Goal Parser interprets the command as follows:
 G -> G
 () -> o
 (al) -> al
 The final concatenated result is "Goal".

 Example 2:

 Input: command = "G()()()()(al)"
 Output: "Gooooal"
 Example 3:

 Input: command = "(al)G(al)()()G"
 Output: "alGalooG"

 Constraints:

 1 <= command.length <= 100
 command consists of "G", "()", and/or "(al)" in some order.
 Accepted
 178.8K
 Submissions
 206.3K
 Acceptance Rate
 86.6%
 */

import Foundation

// Straight solution using .replacingOccurrences
// Time complexity O(N), where N is length of `command`
class Solution {
    func interpret(_ command: String) -> String {
        command.replacingOccurrences(of: "()", with: "o").replacingOccurrences(of: "(al)", with: "al")
    }
}

var sol = Solution()
assert(sol.interpret("G()()(al)") == "Gooal")
assert(sol.interpret("G()(al)") == "Goal")
assert(sol.interpret("G(al)()()") == "Galoo")
