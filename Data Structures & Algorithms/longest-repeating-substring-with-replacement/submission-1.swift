class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        let input = Array(s)
        var dict: [Character: Int] = [:]
        
        var left = 0
        var maxFreq = 0
        var maxLength = 0
        
        // Let the for loop naturally move the right pointer forward
        for right in 0..<input.count {
            let rightChar = input[right]
            
            // 1. Add the incoming character to our frequency map
            dict[rightChar, default: 0] += 1
            
            // 2. Track the highest frequency seen so far.
            // This replaces the getRepeating helper function!
            maxFreq = max(maxFreq, dict[rightChar]!)
            
            // 3. Check if our current window is invalid.
            // (Total Window Length) - (Count of Most Frequent Character) > k
            while (right - left + 1) - maxFreq > k {
                let leftChar = input[left]
                
                // Shrink the window: reduce the count of the character leaving on the left
                dict[leftChar]! -= 1
                
                // Move the left pointer forward by 1 step
                left += 1
            }
            
            // 4. If we are here, the window is guaranteed valid. Update the max length.
            maxLength = max(maxLength, right - left + 1)
        }
        
        return maxLength
    }
}