import UIKit

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        let input = nums
        var sumArray: [Int] = []
        
        for i in 0..<input.count {
            if sumArray.count > 0 {
                let sum = sumArray[i - 1] + input[i]
                sumArray.append(sum)
            } else {
                sumArray.append(input[i])
            }
        }
        return sumArray
    }
}

let array = [1,2,3,4]
let solution = Solution()
let runningSum = solution.runningSum(array)
print(runningSum) // answer should be [1,3,6,10]
