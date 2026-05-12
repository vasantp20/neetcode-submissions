class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var left = 0
        var right = 1
        var maxProfit = 0
        if prices.count < 1 {
            return 0
        }

        while right <= prices.count - 1 {
            let buy = prices[left]
            let sell = prices[right]
            let profit = sell-buy
            if (profit < 0) {
                left = right
                right = left + 1
            } else {
                right += 1
            } 
            if profit > maxProfit {
                maxProfit = profit
            }      
        }

        return maxProfit
    }

}
