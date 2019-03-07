import Foundation

let maxPizzaSize: Int = 18

// Observed Properties
var pizzaInInches: Int = 10 {
    // these observed properties automatically get vars that
    // represent the old and new values within the brackets
    willSet {
        // old value
        print(pizzaInInches)
        // newly set value
        print(newValue)
    }
    didSet {
        // old value
        print(oldValue)
        // new value
        print(pizzaInInches)
        
        if pizzaInInches >= 18 {
            print("Invalid size specified, pizzaInInches is set to the max of \(maxPizzaSize)")
            pizzaInInches = maxPizzaSize
        }
    }
}

pizzaInInches = 33

var numberOfPeople: Int = 12
let slicesPerPerson: Int = 4

var numberOfSlices: Int {
    get {
        return pizzaInInches - 4
    }
}

var numberOfPizza: Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

numberOfPizza = 4

print(numberOfPeople)
