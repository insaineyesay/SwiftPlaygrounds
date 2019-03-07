import UIKit

let arrayOfNumbers = [2, 3, 5, 45, 64, 22, 7]
//
//for number in arrayOfNumbers {
//    print(number)
//    print("NewCycle")
//}


//for number in 1...10 where number % 3 == 0 {
//    print(number)
//}

// 99 bottles

func countTheBottles() {
//    could've also used 1...Int).reversed() to loop in reverse
    for bottleCount in stride(from:99, through: 0, by: -1) {
        if bottleCount == 0 {
            print("No more bottles of beer on the wall, No more bottles of beer. " +
                "Can't take one down or pass it around, No more bottles of beer on the wall.")
        } else {
            print("\(bottleCount) bottles of beer on the wall, \(bottleCount) bottles of beer. " +
                "Take one down and pass it around, \(bottleCount) bottles of beer on the wall.")
        }
        
    }
}

countTheBottles()
