import UIKit

/// bubble sort starts showing its weakness at around 100 random integeers
func bubbleSort(_ input:[Int]) -> [Int] {
    guard input.count > 1  else {
        return input
    }
    
    var result = input
    let count = result.count
    
    var isSwapped = false
    
    repeat {
        isSwapped = false
        for index in 1..<count {
            if result[index] < result[index - 1] {
                result.swapAt(index - 1, index)
                isSwapped = true
            }
        }
    } while isSwapped
    
    return result
}

var randomInterviewArray = [2,3,6,8,43,2,23,54,65,45,67,8766,433,45,5,7,88,7,655,4,43,3]
bubbleSort(randomInterviewArray)
