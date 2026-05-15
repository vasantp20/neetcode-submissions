class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let input = Array(s)
        var maxLength = 0
        var left = 0
        // We use a Set to track characters in the current window
        var seenChars = Set<Character>()
        
        for right in 0..<input.count {
            let currentChar = input[right]
            
            // If the character is already in the window, 
            // shrink the window from the left until it's gone
            while seenChars.contains(currentChar) {
                seenChars.remove(input[left])
                left += 1
            }
            
            // Add the new character and calculate length
            seenChars.insert(currentChar)
            let currentLength = right - left + 1
            if currentLength > maxLength {
                maxLength = currentLength
            }
        }
        
        return maxLength
    }
}