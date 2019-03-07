import Foundation

var width: Float = 3.4
var height: Float = 2.1
let areaCoveredPerBucket: Int = 3

// bucket of paint covers 1.5 squared meters of wall
// to find area you multiple width x height

var bucketsOfPaint: Int {
    get{
        let area = width * height
        let areaCoveredPerBucket: Float = 1.5 * 1.5
        let numberOfBuckets = area / areaCoveredPerBucket
        let roundedBuckets = ceilf(numberOfBuckets)
        return Int(roundedBuckets)
    }
    
    set {
        let areaCanCover = Float(newValue) * 1.5
        let roundedArea = floorf(areaCanCover)
        
        print("your \(newValue) of paint can cover \(roundedArea) walls")
    }
}

bucketsOfPaint = 8
print(bucketsOfPaint)
