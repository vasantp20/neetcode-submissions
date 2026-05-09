class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var res = Set<[Int]>()
        let nums = nums.sorted()
        for i in 0..<nums.count {
            for j in (i+1)..<nums.count {
                for k in (j+1)..<nums.count {
                    if nums[i] + nums[j] + nums[k] == 0 {
                        let temp = [nums[i], nums[j], nums[k]]
                        res.insert(temp)
                    }
                }
            }
        }

        return Array(res)
    }
}