import UIKit

func loveCalculator() -> Int {
    let randNumb = Int.random(in: 0..<100)
    return randNumb
}

let loveScore = loveCalculator()
if loveScore > 80 {
    print("You love each other like Kanye loves Kanye")
} else if loveScore > 40 && loveScore < 80 {
    print("You go together like Coke and Mentos")
} else {
    print("You'll be forever alone")
}
