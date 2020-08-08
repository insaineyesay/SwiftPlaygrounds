import UIKit

func selectionSort(_ input: [Int]) -> [Int] {
    guard input.count > 1 else {
        return input
    }
    
    var unsorted = input
    var sorted = Array(repeating: 0, count: unsorted.count) // mark says set the size of this during initialization
    let count = unsorted.count
    // for each index in the array
    var min = unsorted[0]
    
    for index in 0..<count {
        for i in index..<count {
            if unsorted[i] < min {
                min = unsorted[i]
                var temp = unsorted[i]
            }
        }
        return sorted
    }
    
    var randomInterviewArray = [2,3,6,8,43,2,23,54,65,45,67,8766,1,433,45,5,73,88,7,655,4,43,21]
    selectionSort(randomInterviewArray)
