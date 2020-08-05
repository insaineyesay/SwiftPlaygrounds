import UIKit
import PlaygroundSupport

struct Percent {
    let title = "%"
    func action(value: Double) -> Double {
        let rndm = value * 0.01
        return rndm
    }
}

struct Clear {
    let title = "AC"
    func action(value: String) -> String {
        var tValue = value
        tValue = "0"
        return tValue
    }
}

struct PlusMinus {
    let title = "-/+"
    
    func action(value: Double) -> String {
        print(value)
        let tValue = value * -1
        return "\(tValue)"
    }
}

let percent = Percent()
let percentButton = UIButton(type: .custom)

let clear = Clear()
let clearButton = UIButton(type: .custom)

let plusMinus = PlusMinus()
let plusMinusButton = UIButton(type: .custom)

percentButton.setTitle(Percent().title, for: .normal)
clearButton.setTitle(Clear().title, for: .normal)
plusMinusButton.setTitle(PlusMinus().title, for: .normal)

let button = percentButton
button.sizeToFit()

class ActionTarget {
    let closure: () -> ()
    
    init(closure: @escaping () -> ()) {
        self.closure = closure
    }
    
    @objc func action() {
        closure()
    }
}

struct CalcButtons {
    var clear = Clear()
    var percent = Percent()
    var plusMinus = PlusMinus()
}

let calcButtonPressed = ActionTarget {
    let number = 5.0
   
    if let calcMethod = button.titleLabel?.text {
        
        if calcMethod == plusMinusButton.titleLabel?.text {
            plusMinus.action(value: number)
        }

        if calcMethod == clearButton.titleLabel?.text {
            clear.action(value: "\(number)")
        }

        if calcMethod == percentButton.titleLabel?.text {
            (percent.action(value: number))
            
        }
    }
}

button.addTarget(calcButtonPressed, action: #selector(ActionTarget.action), for: .touchUpInside)

PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = button
