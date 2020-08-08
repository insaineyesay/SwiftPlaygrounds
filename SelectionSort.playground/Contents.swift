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
    for index in 1..<result.count {
        // find the minimum element in the unsorted subarray[i..n-1]
        // and swap it with arr[i]
        var min = index;
        
        for j in index + 1..<input.count {
            // if arr[j] element is less, then it is the new minimum
            if (result[j] < result[min]) {
                min = j;    // update index of min element
            }
            
            // swap the minimum element in subarray[i..n-1] with arr[i]
            result.swapAt(min, index)
        }
    }
    return result
}

var randomInterviewArray = [2,3,6,8,43,2,23,54,65,45,67,8766,1,433,45,5,73,88,7,655,4,43,21]
let result = selectionSort(randomInterviewArray)
print(result)
