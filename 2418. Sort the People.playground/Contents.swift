/*
 2418. Sort the People

 You are given an array of strings names, and an array heights that consists of distinct positive integers. Both arrays are of length n.
 For each index i, names[i] and heights[i] denote the name and height of the ith person.
 Return names sorted in descending order by the people's heights.

 Example 1:

 Input: names = ["Mary","John","Emma"], heights = [180,165,170]
 Output: ["Mary","Emma","John"]
 Explanation: Mary is the tallest, followed by Emma and John.

 Example 2:

 Input: names = ["Alice","Bob","Bob"], heights = [155,185,150]
 Output: ["Bob","Alice","Bob"]
 Explanation: The first Bob is the tallest, followed by Alice and the second Bob.


 Constraints:

 n == names.length == heights.length
 1 <= n <= 103
 1 <= names[i].length <= 20
 1 <= heights[i] <= 105
 names[i] consists of lower and upper case English letters.
 All the values of heights are distinct.
 */

class Solution {
    // Straight solution with creating a dictionary
    // Time complexity O(N)
    func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
        // here we create dictionary
        var dict: [Int: String] = [:]
        // here we append our dictionary with keys - heights, values - names
        for (key, value) in zip(heights, names) {
            dict[key] = value
        }
        // here we create and return sorted final array.
        let resultArray = Array(dict.sorted { $0.0 > $1.0 }.map { $0.1 })
        return resultArray
    }
}

var sol = Solution()
sol.sortPeople(["Mary","John","Emma"], [180,165,155])
