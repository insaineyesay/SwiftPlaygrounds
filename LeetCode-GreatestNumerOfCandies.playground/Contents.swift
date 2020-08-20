import UIKit

class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let maxInArray = candies.max()
        let input = candies
        var result: [Bool] = []
        
        for i in 0..<input.count {
            if var max = maxInArray {
                if (input[i] + extraCandies) >= max {
                    max = input[i]
                    result.append(true)
                } else {
                    result.append(false)
                }
            }
        }
        return result
    }
}



let candies = [2,3,5,1,3]
let extraCandies = 3
let solution = Solution()
let result = solution.kidsWithCandies(candies, extraCandies)
print(result)
//Output: [true,true,true,false,true]
