class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        for i in 0..<prices.count {
            for j in (i+1)..<prices.count {
                var diff = prices[j] - prices[i]
                if diff > 0 && diff > maxProfit {
                    maxProfit = diff
                } 
            }
        }
        return maxProfit
    }

}
