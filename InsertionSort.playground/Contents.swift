import UIKit

class SelectionSort {
    func sort(_ unsorted: [Int]) -> [Int] {
        var sorted = unsorted
        
        for index in 1..<sorted.count {
            let value = sorted[index]
            var j = index
            
            while j > 0 && sorted[j - 1] > value {
                sorted[j] = sorted[j - 1]
                j -= 1
            }
            sorted[j] = value
        }
        return sorted
    }
}

var randomInterviewArray = [2,3,6,8,43,2,23,54,65,45,67,8766,1,433,45,5,73,88,7,655,4,43,21]
let selectionSort = SelectionSort()
let result = selectionSort.sort(randomInterviewArray)
print(result)

