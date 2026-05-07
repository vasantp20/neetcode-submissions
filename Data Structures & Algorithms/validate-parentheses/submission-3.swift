class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []
        var hashDict: [Character: Character] = [")": "(", "]": "[", "}": "{"]

        for char in s {
            if let value = hashDict[char] {
                if stack.count == 0 {
                    return false
                } 
                let checkingIndex = stack.count - 1
                let checkingItem = stack[checkingIndex]
                if value == checkingItem {
                    stack.popLast()
                } else {
                    return false
                }
            } else {
                stack.append(char)
            }
        } 
        if stack.count == 0 {
            return true
        }
        return false
    }
}
