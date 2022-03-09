import UIKit

// Functions

func myCar(){
    print("My car")
}

func myCar(name: String){
    print("My car is a \(name)")
}


myCar(name: "Fusca")


func myName(name first: String){
    print("My name is \(first)")
}

myName(name: "Antonio")


func myAge(_ age: Int){
    print("My age is \(age)")
}

myAge(26)


// Functions with return

typealias FullName = String

func getName(name: String) -> FullName {
    name
}
print(getName(name: "Carlim"))


func getPerson(name: String, lastName: String, age: Int) -> (String, String, Int){
    return(name, lastName, age)
}

let person = getPerson(name: "Carlim", lastName: "Prudencio", age: 26)

print(person)

//

func makeBuy(value: Int, onCompletion: (Int) -> Void){
    onCompletion(value)
}

makeBuy(value: 40) { res in
    print("res: \(res)")
}

typealias onCompletion = (Int, String) -> Void

func makeBuyProduct(onCompletion: onCompletion){
    onCompletion(26, "Carlim")
}

makeBuyProduct{ res, name in
    print(res)
    print(name)
}
