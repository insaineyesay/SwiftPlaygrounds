import UIKit


// Utility function to swap values at two indices in the array
func swap(unsorted: [Int], i: Int, j: Int)
{
    var input = unsorted
    let temp = input[i];
    input[i] = input[j];
    input[j] = temp;
}

// Function to perform selection sort on arr[]
func selectionSort(_ input: [Int]) -> [Int] {
    var result = input
    // run (n - 1) times
    for index in 0..<result.count {
        // find the minimum element in the unsorted subarray[i..n-1]
        // and swap it with arr[i]
        var min = index;
        
        for j in index + 1..<input.count {
            // if arr[j] element is less, then it is the new minimum
            if (result[j] < result[min]) {
                min = j;    // update index of min element
            }
            
        }
        // swap the minimum element in subarray[i..n-1] with arr[i]
        result.swapAt(min, index)
    }
    return result
}

var randomInterviewArray = [2,3,6,8,43,2,23,54,65,45,67,8766,1,433,45,5,73,88,7,655,4,43,21]
let result = selectionSort(randomInterviewArray)
print(result)

// Marks version:
class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        // Empty array case
        if(nums.count == 0) {
            return []
        }
        // Single element array case
        if(nums.count == 1) {
            return nums
        }
        var arr = nums
        for i in 0 ... arr.count - 2 {
            var minIndex = findMinIndex(arr, i)
            swap(&arr, i, minIndex)
        }
        return arr
    }
    /**
    Finds the minimum index in a given array starting from a given index
    - Parameter arr: The array you are trying to sort
    - Parameter startIndex: The index you want to start looking from. All elements < startIndex would already be considered sorted and can be ignored
    - Returns: The index of the minimum value in the array starting from the start index
    */
    func findMinIndex(_ arr: [Int], _ startIndex: Int) -> Int {
        var minIndex = startIndex
        for i in startIndex ... arr.count - 1 {
            if(arr[i] < arr[minIndex]) {
                minIndex = i
            }
        }
        return minIndex
    }
    /**
    Swap two values in a given array
    Look at inout documentation for REFERENCE passing.
    https://docs.swift.org/swift-book/ReferenceManual/Declarations.html#ID545
    https://stackoverflow.com/a/26507349
    - Parameter arr: The REFERENCE to the array that you are trying to start
    - Parameter firstIndex: The index of the first element you want to swap with
    - Parameter secondIndex: The index of the second element you want to swap with
    - Returns: No return since you are modifying the array itself.
    */
    func swap(_ arr: inout [Int], _ firstIndex: Int, _ secondIndex: Int) {
        let temp = arr[firstIndex]
        arr[firstIndex] = arr[secondIndex]
        arr[secondIndex] = temp
    }
}

let marksResult = Solution()
print("Marks solution", marksResult.sortArray(randomInterviewArray))
