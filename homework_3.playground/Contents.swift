import UIKit

struct legkovoeAvto{
    var marka: String
    var godVypuska: Int
    var obiemBagazhnika: Int
    var statusZapushenogoDVS: String
    var statusOtkrytogoOkna: String
    var statusZapolnenogoBagazhnika: String
    func descriptionLeg() {
        print("Легковая машина \(marka) \(godVypuska) года выпуска имеет объем багажника \(obiemBagazhnika) двигатель сейчас \(statusZapushenogoDVS), окна \(statusOtkrytogoOkna), багажник \(statusZapolnenogoBagazhnika)")
    }
}
struct gruzovoeAvto {
    var marka: String
    var godVypuska: Int
    var obiemKuzova: Int
    var statusZapushenogoDVS: String
    var statusOtkrytogoOkna: String
    var statusZapolnenogoKuzova: String
    func descriptionGruz() {
        print("Грузовая машина \(marka) \(godVypuska) года выпуска имеет объем кузова \(obiemKuzova) двигатель сейчас \(statusZapushenogoDVS), окна \(statusOtkrytogoOkna), багажник \(statusZapolnenogoKuzova)")
    }
}

var jaguar = legkovoeAvto(marka: "Ягуар", godVypuska: 2019, obiemBagazhnika: 500, statusZapushenogoDVS: "Заглушен", statusOtkrytogoOkna: "Закрыты", statusZapolnenogoBagazhnika: "Пусто")
var man = gruzovoeAvto(marka: "Ман", godVypuska: 2012, obiemKuzova: 10000, statusZapushenogoDVS: "Запущен", statusOtkrytogoOkna: "Открыты", statusZapolnenogoKuzova: "Заполнен")

if man.godVypuska < jaguar.godVypuska {
    print("\(man.marka) старее \(jaguar.marka)")
} else if man.godVypuska > jaguar.godVypuska {
    print("\(man.marka) новее \(jaguar.marka)")
} else {
    print("\(man.marka) того же года выпуска \(jaguar.marka)")
}

enum Action {
    enum statDVS: String {
        case zapushen = "Запущен"
        case zaglushen = "Заглушен"
    }
    enum statOkna: String {
        case open = "Открыты"
        case close = "Закрыты"
    }
    enum statBagKuz: String {
        case pusto = "Пусто"
        case zapol = "Заполнен"
        case nezap = "Не заполнен"
    }
    case Zapusk(stat: statDVS)
    case Glushenie(stat: statDVS)
    case Otkryt(stat: statOkna)
    case Zakryt(stat: statOkna)
    case Pogruzit(ves: Int)
    case Vygruzit(ves: Int)
}

//var action = Action.Pogruzit(ves: 10)
//action = .Otkryt(stat: Action.statOkna.open)
//
//
//switch action {
//case .Glushenie(stat: Action.statDVS.zaglushen):
//    print("Двигатель заглушен")
//case .Zapusk(stat: Action.statDVS.zapushen):
//    print("Двигатель запущен")
//case .Otkryt(stat: Action.statOkna.open):
//    print("Окна открыты")
//case .Zakryt(stat: Action.statOkna.close):
//    print("Окна закрыты")
//case .Pogruzit(let ves) where ves < jaguar.obiemBagazhnika:
//    print("Багажник \(Action.statBagKuz.nezap)")
//case .Pogruzit(let ves) where ves == jaguar.obiemBagazhnika:
//    print("Багажник заполнен")
//case .Pogruzit(let ves) where ves > jaguar.obiemBagazhnika:
//    print("Багажник переполнен")
//case .Pogruzit(let ves) where ves < man.obiemKuzova:
//        print("Кузов \(Action.statBagKuz.nezap)")
//case .Pogruzit(let ves) where ves == man.obiemKuzova:
//        print("Кузов заполнен")
//case .Pogruzit(let ves) where ves > man.obiemKuzova:
//        print("Кузов переполнен")
//case .Vygruzit(let ves) where ves < jaguar.obiemBagazhnika:
//        print("Багажник \(Action.statBagKuz.nezap)")
//case .Vygruzit(let ves) where ves == jaguar.obiemBagazhnika:
//        print("Багажник заполнен")
//case .Vygruzit(let ves) where ves > jaguar.obiemBagazhnika:
//        print("Багажник переполнен")
//case .Vygruzit(let ves) where ves < man.obiemKuzova:
//            print("Кузов \(Action.statBagKuz.nezap)")
//case .Vygruzit(let ves) where ves == man.obiemKuzova:
//            print("Кузов заполнен")
//case .Vygruzit(let ves) where ves > man.obiemKuzova:
//            print("Кузов переполнен")
//
//default:
//    break
//}

man.descriptionGruz()
jaguar.descriptionLeg()

var pogruz = 500
man.obiemKuzova = man.obiemKuzova - pogruz
jaguar.obiemBagazhnika = jaguar.obiemBagazhnika - pogruz
if man.obiemKuzova >= 0 {
    if man.obiemKuzova > 0 {
        man.statusZapolnenogoKuzova = Action.statBagKuz.nezap.rawValue
    } else {
            man.statusZapolnenogoKuzova = Action.statBagKuz.zapol.rawValue
        }
print("В кузове \(man.marka) осталось \(man.obiemKuzova)л. свободного места")
} else {
    print("Кузов \(man.marka) переполнен!")
}
if jaguar.obiemBagazhnika >= 0 {
    if  jaguar.obiemBagazhnika > 0 {
        jaguar.statusZapolnenogoBagazhnika = Action.statBagKuz.nezap.rawValue
    } else {
            jaguar.statusZapolnenogoBagazhnika = Action.statBagKuz.zapol.rawValue
        }
    print("В багажнике \(jaguar.marka) осталось \(jaguar.obiemBagazhnika)л. свободного места")
} else {
    print("Багажник \(jaguar.marka) переполнен!")
}



func zapDVS() {
    if jaguar.statusZapushenogoDVS == "Заглушен" {
        jaguar.statusZapushenogoDVS = Action.statDVS.zapushen.rawValue
        print("Двигатель \(jaguar.marka) запущен")
    } else {
        print("Двигатель \(jaguar.marka) уже запущен")
    }
    if man.statusZapushenogoDVS == "Заглушен" {
        man.statusZapushenogoDVS = Action.statDVS.zapushen.rawValue
        print("Двигатель \(man.marka) запущен")
    } else {
        print("Двигатель \(man.marka) уже запущен")
    }
}

zapDVS()
jaguar.descriptionLeg()
man.descriptionGruz()

func glushDVS() {
    if jaguar.statusZapushenogoDVS == "Запущен" {
        jaguar.statusZapushenogoDVS = Action.statDVS.zaglushen.rawValue
        print("Двигатель \(jaguar.marka) заглушен")
    } else {
        print("Двигатель \(jaguar.marka) уже заглушен")
    }
    if man.statusZapushenogoDVS == "Запущен" {
        man.statusZapushenogoDVS = Action.statDVS.zaglushen.rawValue
        print("Двигатель \(man.marka) заглушен")
    } else {
        print("Двигатель \(man.marka) уже заглушен")
    }
}

glushDVS()
jaguar.descriptionLeg()
man.descriptionGruz()

func otkOkna() {
    if jaguar.statusOtkrytogoOkna == "Закрыты" {
        jaguar.statusOtkrytogoOkna = Action.statOkna.open.rawValue
        print("Окна \(jaguar.marka) открыты")
    }else {
        print("Окна \(jaguar.marka) уже открыты")
    }
    if man.statusOtkrytogoOkna == "Закрыты" {
        man.statusOtkrytogoOkna = Action.statOkna.open.rawValue
        print("Окна \(man.marka) открыты")
    }else {
        print("Окна \(man.marka) уже открыты")
    }
}

otkOkna()
jaguar.descriptionLeg()
man.descriptionGruz()

func zakOkna() {
    if jaguar.statusOtkrytogoOkna == "Открыты" {
        jaguar.statusOtkrytogoOkna = Action.statOkna.close.rawValue
        print("Окна \(jaguar.marka) закрыты")
    }else {
        print("Окна \(jaguar.marka) уже закрыты")
    }
    if man.statusOtkrytogoOkna == "Открыты" {
        man.statusOtkrytogoOkna = Action.statOkna.close.rawValue
        print("Окна \(man.marka) закрыты")
    }else {
        print("Окна \(man.marka) уже закрыты")
    }
}

zakOkna()
jaguar.descriptionLeg()
man.descriptionGruz()
