import UIKit

// Operadores condicionais

var number1: Int = 31
var number2: Int = 66
var number3: Int = 30

var larger: Int

//Mairo
if number1 > number2 {
  larger = number1
}else {
   larger = number2
}

larger = number3 > larger ? number3 : larger

print("Larger \(larger)")
