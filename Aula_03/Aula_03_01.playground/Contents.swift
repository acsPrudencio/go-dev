import UIKit

var nota = 10

// switch
switch nota{
case 0:
    print("Case 0: \(nota)")
case 1:
    print("Case 1: \(nota)")
case 2:
    print("Case 2: \(nota)")
case 3:
    print("Case 3: \(nota)")
case 4:
    print("Case 4: \(nota)")
default:
    print("Normal case dafult")
}

// switch in range
switch nota{
case 0...2:
    print("Case 0: \(nota)")
case 3...5:
    print("Case 1: \(nota)")
case 6...8:
    print("Case 2: \(nota)")
case 9...11:
    print("Case 3: \(nota)")
case 12...14:
    print("Case 4: \(nota)")
default:
    print("Case in range dafult")
}

// switch with tuple
let person = ("Antonio", 26)
switch person{
case ("Carlos", 26):
    print("Case 0: \(person)")
case ("Antonio", 27):
    print("Case 1: \(person)")
case ("Antonio", 26):
    print("Case 3: \(person)")
default:
    print("Not found")
}

// enums

enum Aluno {
    case aaa
    case bbb
    case ccc
}


var a = Aluno.aaa

print(a)

// swift com enus

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto
}
var planet = Planet.pluto

switch planet {
case .mercury:
    print(planet)
case .venus:
    print(planet)
case .earth:
    print(planet)
case .mars:
    print(planet)
case .jupiter:
    print(planet)
case .saturn:
    print(planet)
case .uranus:
    print(planet)
case .neptune:
    print(planet)
case .pluto:
    print(planet)
}





// enum tipado

enum Planet2: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto
}
var planet2 = Planet2.pluto

switch planet2 {
case .mercury:
    print("(\(planet2) is the \(planet2.rawValue) planet in solar system")
case .venus:
    print("(\(planet2) is the \(planet2.rawValue) planet in solar system")
case .earth:
    print("(\(planet2) is the \(planet2.rawValue) planet in solar system")
case .mars:
    print("(\(planet2) is the \(planet2.rawValue) planet in solar system")
case .jupiter:
    print("(\(planet2) is the \(planet2.rawValue) planet in solar system")
case .saturn:
    print("(\(planet2) is the \(planet2.rawValue) planet in solar system")
case .uranus:
    print("(\(planet2) is the \(planet2.rawValue) planet in solar system")
case .neptune:
    print("(\(planet2) is the \(planet2.rawValue) planet in solar system")
case .pluto:
    print("(\(planet2) is the \(planet2.rawValue) planet in solar system")
}

// atribuicao implicita
