import UIKit

// Vetores

var cars = ["Fusca", "Fiesta", "Camaro", "Celta", "Palio"]

cars.append("Gol")

var cars2 = cars

print("Before removal")
print(cars)

cars.remove(at:5)
print("After removal")
print(cars)

// Remove fist element from array
cars.removeFirst()

print("After removal")
print(cars)

// Remove the last element from array
cars.removeLast()

print("After removal")
print(cars)
print("######################################################")
print(cars2)
cars2.removeAll()
cars2.append("Opala")
print(cars2)
