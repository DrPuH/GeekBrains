import UIKit

var a = 23
var b = 0

func ChetNechet() {
    if a % 2 == 0 {
        print("\(a) четное")
    } else {
        print("\(a) нечетное")
    }
}
ChetNechet()

func DelNa3() {
    b = a % 3
    if b == 0 {
        print("\(a) делится на 3 без остатка")
    } else {
        print("\(a) делится на 3 с остатком \(b)")
    }
}
DelNa3()



