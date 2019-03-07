import UIKit

func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    
    return operation(n1, n2)
}

func add(no1: Int, no2: Int) -> Int {
    return no1 + no2
}

//func multiply(m1: Int, m2: Int) -> Int {
//    return m1 * m2
//}
//
// the above as a closure
//{
//    (c1: Int, c2: Int) -> Int in
//        return c1 * c2
//
//}
//calculator(n1: 2, n2: 3, operation: add)
//calculator(n1: 7, n2: 7, operation: multiply)

// this is the same code as above. just in shorthand
// trailing closure
let result = calculator(n1: 7, n2: 3) {$0 * $1}
print((result))
