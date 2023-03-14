/*
 121. Best Time to Buy and Sell Stock

 You are given an array prices where prices[i] is the price of a given stock on the ith day.

 You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

 Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

 Example 1:

 Input: prices = [7,1,5,3,6,4]
 Output: 5
 Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
 Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.

 Example 2:

 Input: prices = [7,6,4,3,1]
 Output: 0
 Explanation: In this case, no transactions are done and the max profit = 0.

 Constraints:

 1 <= prices.length <= 105
 0 <= prices[i] <= 104
 */

class Solution {
    // Straight solution with time complexity O(N^2)
    // algorythm is slow
    func maxProfit(_ prices: [Int]) -> Int {
        var sellBuyOption: Int = 0
        guard !prices.isEmpty else { return 0 }
        for price in 0..<prices.count {
            for pr in price+1..<prices.count where prices[price] - prices[pr] < sellBuyOption {
                sellBuyOption = prices[price] - prices[pr]
            }
        }
        guard sellBuyOption < 0 else { return 0 }
        return abs(sellBuyOption)
    }
    // Optimal solution with time complexity O(N) where N is length of `prices` elements
    func maxProfit1(_ prices: [Int]) -> Int {
        guard !prices.isEmpty else { return 0 }
        var minPrice = prices.first!
        var maxProfit = 0
        for price in prices {
            if price < minPrice {
                minPrice = price
            } else {
                maxProfit = max(maxProfit, price - minPrice)
            }
        }
        return maxProfit
    }
}

var sol = Solution()
sol.maxProfit([7,1,5,3,6,4])
sol.maxProfit([7,6,4,3,1])

assert(sol.maxProfit([7,6,4,3,1]) == 0)
assert(sol.maxProfit1([7,1,5,3,6,4]) == 5)
