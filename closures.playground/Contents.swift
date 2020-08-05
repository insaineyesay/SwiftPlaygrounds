import UIKit

func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    
    return operation(n1, n2)
}

func add(no1: Int, no2: Int) -> Int {
    return no1 + no2
}


//func backward(_ s1: String, _ s2: String) -> Bool {
//    return s1 > s2
//}

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella", "Karren"]
//var reversedNames = names.sorted(by: backward)
var reversedNames =
    
    // All of the following does the same thing. The bottom most being the
    // most concise shorthand.
    //    names.sorted(by: { (s1: String, s2: String) -> Bool in
    //        return s1 > s2
    //    })

    //    names.sorted(by: { s1, s2 in s1 > s2 })
    //    names.sorted(by: { $0 > $1 })
    //    names.sorted { $0 > $1 }
        names.sorted(by: >)


//print(reversedNames)
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
//print((result))

// Dictionary of english number names
let digitNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]

let numbers = [16, 58, 510, 47, 99, 13, 27]
let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}

//print(strings)

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 50)
print(incrementByTen())
print(incrementByTen())
print(incrementByTen())

func printInfo(_ value: Any) {
    let randomVar = type(of: value)
    print("'\(value)' of type '\(randomVar)'")
}

print(printInfo(incrementByTen))
