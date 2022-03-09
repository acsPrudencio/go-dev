import UIKit

// Variables and type

// var name = "Antonio"
var lastName = "Prudencio"
var age = 26
// let res = name +  " " + lastName


// let res = "Meu nome é \(name) \(lastName) e tenho \(age) anos"
// print(res)

// Gera erro
// let res = "Novo valor"
// print(res)

// Type variable
print(type(of:lastName))
print(type(of:age))

var typeAny: Any = "AAA"

print("Initial value typeAny \(type(of:typeAny)) \(typeAny)")

typeAny = 42

print("Value after change typeAny \(type(of:typeAny)) \(typeAny)")
