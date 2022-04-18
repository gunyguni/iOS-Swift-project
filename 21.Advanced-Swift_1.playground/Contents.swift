import UIKit

var width: Float = 3.4
var height: Float = 2.1

var bucketsOfPaint: Int {
    get {
        let floatbuckets = width * height / 1.5
        return Int(ceilf(floatbuckets))
    }
    set {
        print("It can cover \(Double(newValue) * 1.5)m^2")
    }
}

bucketsOfPaint = 8
