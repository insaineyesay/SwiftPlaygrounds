import UIKit

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var sum = nums[0]
        let input = nums
        var sumArray: [Int] = []
        sumArray.append(sum)
        
        for i in 1..<input.count {
                sum += input[i]
                sumArray.append(sum)
        }
        return sumArray
    }
}

var array = [1,2,3,4]
var solution = Solution()
var sum = solution.runningSum(array)
print(sum)
