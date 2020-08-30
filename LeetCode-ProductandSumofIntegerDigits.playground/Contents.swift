
extension BinaryInteger {
    var digits: [Int] {
        return String(describing: self).compactMap { Int(String($0)) }
    }
}

class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        let numConvertedToString = n.digits
        var multiplicationResult = numConvertedToString[0]
        var additionResult = numConvertedToString[0]
        
        for i in 1..<numConvertedToString.count {
            multiplicationResult *= numConvertedToString[i]
            additionResult += numConvertedToString[i]
        }
        
        return multiplicationResult - additionResult
    }
}

let n = 234
let solution = Solution()
let result = solution.subtractProductAndSum(n)
print(result)
//Output: 15
//Explanation:
//Product of digits = 2 * 3 * 4 = 24
//Sum of digits = 2 + 3 + 4 = 9
//Result = 24 - 9 = 15
