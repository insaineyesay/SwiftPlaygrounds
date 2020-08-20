class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        
        let looseJewelsArray = Array(J)
        let looseStones = Array(S)
        
        var output = 0
        
        for jewel in J {
            for stone in S {
                if jewel == stone {
                    output += 1
                }
            }
        }
        return output
    }
}


let J = "aA", S = "aAAbbbb"
let solution = Solution()
let result = solution.numJewelsInStones(J, S)
print(result)
//Output: 3
