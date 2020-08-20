import UIKit

class Node {
    
    var value: String
    var children: [Node] = []
    weak var parent: Node?
    
    init(value: String) {
        self.value = value
    }
    
    func add(_ child: Node) {
        children.append(child)
        child.parent = self
    }
}

let beverages = Node(value: "beverages")

let hotBeverages = Node(value: "hot")
    let coffee = Node(value: "coffee")
    let cocoa = Node(value: "cocoa")
    let tea = Node(value: "tea")
        let blackTea = Node(value: "blackTea")
        let greenTea = Node(value: "greenTean")
        let chai = Node(value: "chai")
hotBeverages.add(tea)
hotBeverages.add(coffee)
hotBeverages.add(cocoa)
tea.add(blackTea)
tea.add(greenTea)
tea.add(chai)

let coldBeverages = Node(value: "cold")
    let soda = Node(value: "soda")
        let gingerAle = Node(value: "ginger ale")
        let bitterLemo = Node(value: "bitter Lemon")
    let milk = Node(value: "milk")
coldBeverages.add(soda)
coldBeverages.add(milk)
soda.add(gingerAle)
soda.add(bitterLemo)

beverages.add(hotBeverages)
beverages.add(coldBeverages)


extension Node: CustomStringConvertible {
  // 2
  var description: String {
    // 3
    var text = "\(value)"
    
   // 4
    if !children.isEmpty {
      text += " {" + children.map { $0.description }.joined(separator: ", ") + "} "
    }
    return text
  }
}


extension Node {
    func search(value: String) -> Node? {
        if value == self.value {
            return self
        }
        
        for child in children {
            if let found = child.search(value: value) {
                return found
            }
        }
        return nil
    }
}
print(beverages)
