import UIKit

// return -1 equals stack is empity

class Stack{
    
    var elements = [Int,]()
    var max = 10
    var topo = -1
    
    
    func push(num: Int){
        if(max > topo){
            elements += [num]
            topo = topo + 1
        }else{
            print("Stack is full!!!")
        }
    }
    
    func pop() -> Int{
        if(topo != -1){
            let num = elements[topo]
            elements.remove(at: topo)
            topo = topo - 1
            print("Number removed \(num) from the stack!!!")
            return num
        }else{
            print("Stack is empety")
            return -1
        }
    }
    
    func lastElement() -> Int{
        if(isEmpity()){
            print("The stack is empity")
            return -1
        }
        return elements[topo]
    }
    
    func AllElements() -> [Int]{
        return elements
    }
    
    func printElements(){
        print(elements)
    }
    
    func isEmpity() -> Bool{
        topo == -1 ? true : false
    }
    
    func sizeStack() -> Int{
        topo
    }
    
    func popFirst(){
        var index = 0
        var size = topo
        while size != 0 {
            elements[index] = elements[index+1]
            index = index + 1
            size = size - 1
        }
        elements.remove(at: topo)
        topo = topo - 1
    }
}


var newStack = Stack()

newStack.push(num: 5)
newStack.push(num: 15)
newStack.push(num: 16)
newStack.push(num: 17)
newStack.push(num: 18)
newStack.push(num: 19)
//
//
//newStack.pop()
//newStack.pop()
//
//print(newStack.isEmpity())
//
//print(newStack.AllElements())

newStack.popFirst()
newStack.popFirst()
newStack.pop()
newStack.printElements()
