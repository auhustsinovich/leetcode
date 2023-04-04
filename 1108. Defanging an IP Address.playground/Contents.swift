/*
 1108. Defanging an IP Address

 Given a valid (IPv4) IP address, return a defanged version of that IP address.

 A defanged IP address replaces every period "." with "[.]".

 Example 1:

 Input: address = "1.1.1.1"
 Output: "1[.]1[.]1[.]1"

 Example 2:

 Input: address = "255.100.50.0"
 Output: "255[.]100[.]50[.]0"

 Constraints:

 The given address is a valid IPv4 address.
 */

class Solution {
    // Straight solution with time complexity O(N), where N is length of `address`
    func defangIPaddr(_ address: String) -> String {
        var ipAddress: String = ""
        for element in address {
            if element == "." {
                ipAddress += String("[\(element)]")
            } else {
                ipAddress += String(element)
            }
        }
        return ipAddress
    }
}

var sol = Solution()
assert(sol.defangIPaddr("123.45.67.890") == "123[.]45[.]67[.]890")
