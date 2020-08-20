import UIKit

class Solution {
    func defangIPaddr(_ address: String) -> String {
        let result = address.replacingOccurrences(of: ".", with: "[.]")
        // or this below, which is the same time, but .2mb less memory
//        let toArray = address.components(separatedBy: ".")
//        let backToString = toArray.joined(separator: "[.]")
        return result
    }
}

var address = "1.1.1.1"
let solution = Solution()
let result = solution.defangIPaddr(address)
print(result)
//Output: "1[.]1[.]1[.]1"

