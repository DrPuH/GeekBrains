import UIKit

// ax^2 + bx + c = 0
 
var x1: Double = 0
var x2: Double = 0
var D: Double = 0
 
let a: Double = 1
let b: Double = -8
let c: Double = 15
 
D = b * b - 4 * a * c
 
if D > 0 {
    x1 = (-b + sqrt(D)) / (2 * a)
    x2 = (-b - sqrt(D)) / (2 * a)
    print("X1 = \(x1); X2 = \(x2)")
} else if D == 0 {
    x1 = (-b + sqrt(D)) / (2 * a)
    print("X1 = X2 = \(x1)")
} else {
    print("Has no roots")
}
