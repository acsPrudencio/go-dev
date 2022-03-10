import UIKit
import Darwin
import Foundation

// Sort

let students = ["Carlos", "Joao", "Doug", "Miller", "Zico", "Antonio"]

var studentsABC = students.sorted(by: <)
var studentsZYX = students.sorted(by: >)

print("Before sorted")
print(students)
print()
print("After sorted studentsABC")
print(studentsABC)
print()
print("After sorted studentsZYX")
print(studentsZYX)
print()


var students2 = ["Carlos", "Joao", "Doug", "Miller", "Zico", "Antonio"]


// Reverse order
students2.sort{(a: String, b: String) -> Bool in
    a > b
}

print("After sort students2: Reverse order")
print(students2)
print()

// Normal order
students2.sort{(a: String, b: String) -> Bool in
    b > a
}

print("After sort students2: normal order")
print(students2)
print()

var numbers = 0...42

let result = numbers.shuffled()
print(result)
// Map

// Filter

// Redux

// Criar uma funcao p/ verificar se uma palavra eh palindroma
// usar filter
