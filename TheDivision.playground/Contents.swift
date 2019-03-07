import UIKit

let randomInt = Int.random(in: 1...100)
//print(randomInt)

let randomInt2 = Int.random(in: 1...50)
var answer = randomInt/randomInt2
var remainder = randomInt - (answer * randomInt2)
print(randomInt, " divided by ")
print(randomInt2)
print(" equals \(answer)")

if answer != 0 {
    print("with a remainder of \(remainder)")
}
