class Solution {
    func balancedStringSplit(_ s: String) -> Int {
        var bal = 0
        var sum = 0
        for c in s {
            if c == "L" {
                bal += 1
            } else {
                bal -= 1
            }
            
            if bal == 0 {
                sum += 1
            }
        }
        return sum
    }
}

let s = "RLRRLLRLRL"
var solution = Solution()
var result = solution.balancedStringSplit(s)
print(result)
//
//Input: s = "LLLLRRRR"
//Output: 1
//Explanation: s can be split into "LLLLRRRR".

//Constraints:
//
//1 <= s.length <= 1000
//s[i] = 'L' or 'R'
