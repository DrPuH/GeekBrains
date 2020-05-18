import UIKit

let kata = 3
let katb = 4

let ploshad = (Double)(kata * katb)
let gip = sqrt((Double)(kata * kata) + (Double)(katb * katb))
let per = (Double)(katb + kata) + gip

print("Площадь треугольника равна \(ploshad) кв.ед., периметр треугольника равен \(per) ед. и длина гипотенузы треугольника равна \(gip) ед.")
