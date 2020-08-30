class Solution {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        
        for i in stride(from: 0, to: nums.count, by: 2) {
            result += Array(repeating: nums[i + 1], count: nums[i])
        }
        return result
    }
}

let nums = [1,2,3,4]
let solution = Solution()
let result = solution.decompressRLElist(nums)
print(result)

//Output: [2,4,4,4]
//Explanation: The first pair [1,2] means we have freq = 1 and val = 2 so we generate the array [2].
//The second pair [3,4] means we have freq = 3 and val = 4 so we generate [4,4,4].
//At the end the concatenation [2] + [4,4,4] is [2,4,4,4].
