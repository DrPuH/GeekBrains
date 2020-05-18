import UIKit

var vklad:Double = 45000

var god = 1

let proStavka:Double = 10

while god <= 5 {
vklad = vklad + vklad * proStavka / 100
god = god + 1

}
print("Сумма вклада через 5 лет равна \(vklad)  рублям")
