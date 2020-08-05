import UIKit

let x = 15
if (x % 5 == 0 && x % 3 == 0) {
    print("fizzbuzz")
    
} else if (x % 3 == 0) {
    print("fizz")
}
else if (x % 5 == 0) {
    print("buzz")
}
else {
    print(x)
}

