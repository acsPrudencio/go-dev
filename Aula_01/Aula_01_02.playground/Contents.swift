import UIKit

// Incrementos, operadores logicos


let num1 = 10
let num2 = 20
var number3 = 30

let name1 = "Antonio"
let name2 = "Carlim"

let compair = (num1 < num2)
let compairName = (name1 > name2)

print(compair)
print(compairName)



let isHidden: Bool = false
let isEnable: Bool = true
let isEnable2: Bool = true

let result = isHidden || isEnable && isEnable2

// Print true
print(result)


// Print false
print(!result)


print("Number3 before incremetation \(number3)")
number3 += 1

print("Number3 afeter incremetation \(number3)")
