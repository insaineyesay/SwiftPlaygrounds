class Solution {
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        var result = [Int]()
         
        for (num, index) in zip(nums, index) {
            result.insert(num, at: index)
        }

        return result
    }
}

let nums = [0,1,2,3,4], index = [0,1,2,2,1]
let solution = Solution()
let result = solution.createTargetArray(nums, index)
print(result)

//Constraints:
//
//1 <= nums.length, index.length <= 100
//nums.length == index.length
//0 <= nums[i] <= 100
//0 <= index[i] <= i

//Input: nums = [0,1,2,3,4], index = [0,1,2,2,1]
//Output: [0,4,1,3,2]
//Explanation:
//nums       index     target
//0            0        [0]
//1            1        [0,1]
//2            2        [0,1,2]
//3            2        [0,1,3,2]
//4            1        [0,4,1,3,2]
