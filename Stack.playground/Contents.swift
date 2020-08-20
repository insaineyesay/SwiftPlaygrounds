import UIKit

public struct Stack<T> {
    fileprivate var array: [T] = []
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func push(_ element: T) {
        return array.append(element)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var peek: T? {
        return array.last
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        let topDivider = "--Stack---\n"
        let bottomDivider = "\n-----------\n"
        
        let stackElements = array.map { "\($0)" }.reversed().joined(separator: "\n")
        
        return topDivider + stackElements + bottomDivider
    }
}

var girlStack = Stack<String>()
girlStack.push("Jamaica")
girlStack.push("CJ")
girlStack.push("Christy")
girlStack.push("Kristin")

girlStack.peek
print(girlStack)
