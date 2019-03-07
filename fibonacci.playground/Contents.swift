import UIKit

func fibonacci(until n: Int) {
//    var output: String = ""
//    var sum = 0
    print(0)
    print(1)
    var num1 = 0
    var num2 = 1
    
    
    
//    var nextNumber = 0
    
    for _ in 0...n {
    let seqNum = num1 + num2
        
        num1 = num2
        num2 = seqNum
        print("\(seqNum), ")
    }
}
fibonacci(until: 5)
