//class Solution {
//    func restoreString(_ s: String, _ indices: [Int]) -> String {
//        var someString = String()
//        var newString = Array(repeating: String(), count: indices.count)
//        for i in 0..<indices.count {
//            let char = s.index(s.startIndex, offsetBy: indices[i])
//            print(i, indices[i], s[char])
//            someString = someString + String(s[char])
//            newString[i] = String(s[char])
//        }
//        print(newString)
//        return someString
//    }
//}

//class Solution {
//    func findStringIndex(_ s: String, index: Int) -> Character {
//        let char = s.index(s.startIndex, offsetBy: index)
//        return s[char]
//    }
//
//    func restoreString(_ s: String, _ indices: [Int]) -> String {
//        var someString = String()
//
//        for j in 4...7 {
//            let char = findStringIndex(s, index: j)
//            someString = someString + String(char)
//        }
//        for i in 0...3 {
//            let char = findStringIndex(s, index: i)
//            someString = someString + String(char)
//        }
//
//        return someString
//    }
//}

class Solution {
    
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var result = s
        var newArray = [String]()
        
        for i in 0..<indices.count {
            newArray.append(contentsOf: result.map { return String($0) + String(s[s.index(s.startIndex, offsetBy: indices.firstIndex(of: i) ?? i)]) })
            print(newArray)
        }
        
        return result
    }
}

let s = "codeleet",
indices = [4,5,6,7,0,2,1,3]
let solution = Solution()
let result = solution.restoreString(s, indices)
print(result)
//Output: "leetcode"
//Explanation: As shown, "codeleet" becomes "leetcode" after shuffling.
//let i = s.index(s.startIndex, offsetBy: indices[6])
//let j = s[s.startIndex]
//print(String(j))
