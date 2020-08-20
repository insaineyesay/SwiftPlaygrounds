import UIKit

class SelectionSort {
    
    /// write a function that takes an array of integers and returns an array of integers
    func sort(_ unsorted: [Int]) -> [Int] {
        /// make a copy of the array for mutation
        var sorted = unsorted
        /// loop through the array starting at the 2nd position, because the first one automatically goes in spot 1 anyway.
        for index in 1..<sorted.count {
            /// create a variable representing the current value in the loop
            let value = sorted[index]
            /// set a variable that references the current iteration/location
            var j = index
            /// this is how we get numbers in the right place if they're less than the last, but no quite the smallest
            /// while the index is greater than 0, check to see if the index is greater than the current outer index, but less than the inner index before it
            /// if so, swap those two numbers until that's no longer true. 
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

