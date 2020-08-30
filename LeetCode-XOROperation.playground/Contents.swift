class Solution {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
       
       return (0..<n).map { start + ($0 * 2)}.reduce(0, ^)
    }
    
}

let n = 5, start = 0
let solution = Solution()
let result = solution.xorOperation(n, start)
print(result)

//Output: 8
//Explanation: Array nums is equal to [0, 2, 4, 6, 8] where (0 ^ 2 ^ 4 ^ 6 ^ 8) = 8.
//Where "^" corresponds to bitwise XOR operator.

print((0..<n).map { start + ($0 * 2)})
