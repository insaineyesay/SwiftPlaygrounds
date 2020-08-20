import UIKit

//Input: nums = [1,2,3,1,1,3]
//Output: 4
//Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.
class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var output: Int  = 0
        let input = nums
        
        for i in 0..<input.count {
            let matcher = input[i]
            for j in i + 1..<input.count {
                if input[j] == matcher {
                    print(input[j], matcher)
                    output += 1
                }
            }
        }
        return output
    }
}



let nums = [1,2,3,1,1,3]
let solution = Solution()
let result = solution.numIdenticalPairs(nums)
print(result)
