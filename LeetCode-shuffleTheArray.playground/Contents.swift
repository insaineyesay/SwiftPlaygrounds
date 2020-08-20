import UIKit

class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var shuffled: [Int] = []
        let input = nums
        for i in 0..<n {
            shuffled.append(input[i])
            shuffled.append(input[i + n])
        }
        
        return shuffled
    }
}

let array = [1,2,3,4,4,3,2,1]
let n = 4
let solution = Solution()
let shuffled = solution.shuffle(array, n)
print(shuffled) // answer should be [2,3,5,4,1,7]
