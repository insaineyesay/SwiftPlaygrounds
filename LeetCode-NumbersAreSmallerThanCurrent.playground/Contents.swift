class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        var amntOfNumsLessThan = 0
        
        for i in 0..<nums.count {
            amntOfNumsLessThan = 0
            for j in 0..<nums.count {
                if j != i && nums[j] < nums[i] {
                    amntOfNumsLessThan += 1
                }
            }
            result.insert(amntOfNumsLessThan, at: i)
        }
        return result
    }
}

let nums = [8,1,2,2,3]
let solution = Solution()
let result = solution.smallerNumbersThanCurrent(nums)
print(result)

//Output: [4,0,1,1,3]
//Explanation:
//For nums[0]=8 there exist four smaller numbers than it (1, 2, 2 and 3).
//For nums[1]=1 does not exist any smaller number than it.
//For nums[2]=2 there exist one smaller number than it (1).
//For nums[3]=2 there exist one smaller number than it (1).
//For nums[4]=3 there exist three smaller numbers than it (1, 2 and 2).
