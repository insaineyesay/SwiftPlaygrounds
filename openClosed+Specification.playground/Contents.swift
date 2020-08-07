import Foundation

// What is the benefit of all this?
// This shows a system that is closed to modification but open to extension by virtue of protocol inheritence.
// After someone makes a better filter, you don't have to go back in and modify because its extended in new files
// rather than having to modify the original class
enum Color {
    case red
    case green
    case blue
}

enum Size {
    case small
    case medium
    case large
    case extraLarge
}

class Product {
    var name: String
    var color: Color
    var size: Size
    
    init(_ name: String, _ color: Color, _ size: Size) {
        self.name = name
        self.color = color
        self.size = size
    }
}

// Problem: Creating a filter to filter out products
// Not so good Solution: create a product filter class and add a function that adds a filter for each filter option
// Larger Problem: Everytime Mr. Business face wants to add new functionality to the filter we have to modify a class
// that was already created, tested, merged, and pushed to production.
class ProductFilter {
    
    // First iteration of filter: Week 1 of the PI
    func filterByColor(_ products: [Product], _ color: Color) -> [Product] {
        var result = [Product]()
        for p in products {
            if p.color == color {
                result.append(p)
            }
        }
        return result
    }
    
    // Addition 1 to the filter: Week 2 of the PI
    func filterBySize(_ products: [Product], _ size: Size) -> [Product] {
        var result = [Product]()
        for p in products {
            if p.size == size {
                result.append(p)
            }
        }
        return result
    }
    
    // 3rd request for the filter in 3 weeks. This is getting stupid!! RAAAAAGGEEEEE
    func filterBySizeAndColor(_ products: [Product], _ size: Size, _ color: Color) -> [Product] {
        var result = [Product]()
        for p in products {
            if p.size == size && p.color == color {
                result.append(p)
            }
        }
        return result
    }
}

// Proper solution: Protocols (Specification pattern) thus extending the functionality rather than modifying
// the original class
protocol Specification {
    associatedtype T
    func isSatisfied(_ item: T) -> Bool
}

//
protocol Filter {
    associatedtype T
    func filter<Spec: Specification>(_ items: [T], _ spec: Spec) -> [T]
        where Spec.T == T;
}

struct ColorSpecification : Specification {
    typealias T = Product
    let color: Color
    init(_ color: Color) {
        self.color = color
    }
    
    func isSatisfied(_ item: Product) -> Bool {
        return item.color == color
    }
}

struct SizeSpecification : Specification {
    typealias T = Product
    let size: Size
    init(_ size: Size) {
        self.size = size
    }
    
    func isSatisfied(_ item: Product) -> Bool {
        return item.size == size
    }
}

// This is how we are able to add multiple specifications IE: Color and size.
struct AndSpecification<T, SpecA: Specification, SpecB: Specification> : Specification
where SpecA.T == SpecB.T, T == SpecA.T {
    let first: SpecA
    let second: SpecB
    
    init(_ first: SpecA, _ second: SpecB) {
        self.first = first
        self.second = second
        
    }
    
    func isSatisfied(_ item: T) -> Bool {
        return first.isSatisfied(item) && second.isSatisfied(item)
    }
}

struct NewFilter : Filter {
    typealias T = Product
    func filter<Spec : Specification>(_ items: [Product], _ spec: Spec) -> [T]
        where Spec.T == T {
            var result = [T]()
            for i in items {
                if spec.isSatisfied(i) {
                    result.append(i)
                }
            }
            return result
    }
}

func main() {
    let apple = Product("Apple", .green, .small)
    let tree = Product("Tree", .green, .large)
    let house = Product("House", .blue, .extraLarge)
    let skyPainting = Product("SkyPainting", .blue, .extraLarge)
    
    let products = [apple, tree, house, skyPainting]
    
    let pf = ProductFilter()
    
    // Business face: Hey, we need to filter by color
    print("Green products (old):")
    for p in pf.filterByColor(products, .green) {
        print(" - \(p.name) is green")
    }
    
    // Business face: Hey, now we need to filter by size
    print("Large products (old):")
    for p in pf.filterBySize(products, .large) {
        print("- \(p.name) is large")
    }
    
    // Business face: Hey, we know you guys already made a filter,
    // but can we also filter with size AND color now? Oh, by tomorrow's release
    print("Extra Large Blue products (old):")
    for p in pf.filterBySizeAndColor(products, .extraLarge, .blue) {
        print("- \(p.name) is extra large and blue")
    }
    
    // Dev Team: Hey, we took some time to refactor this filter you keep
    // bugging us about
    print("green products (new):")
    let nf = NewFilter()
    for p in nf.filter(products, ColorSpecification(.green)) {
        print("- \(p.name) is green")
    }
    
    print("Extra Large Blue products (new):")
    let nf2 = NewFilter()
    for p in nf2.filter(products, AndSpecification(ColorSpecification(.blue), SizeSpecification(.extraLarge))) {
        print("- \(p.name) is extra large and blue")
    }
    
    // Here's a challenge, refactor the specifications to take handle more than
    // 2 filter criteria.
    
}

main()
