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


var arr: [Int] = []
for i in 0...99 {
    arr.append(i)
}
print("Возрастающий массив из 100 чисел \(arr)")

//for(index, value) in arr.enumerated() {
//    if (value % 2) == 0 {
//        arr[index] += 1
//    }
//}
//arr
func UdalenieChet () {
    for (_, value) in arr.enumerated() {
        if (value % 2) == 0{
            arr.remove(at: arr.firstIndex(of: value)!)
        }
    }
    print("Массив без четных чисел \(arr)")
}
UdalenieChet()
