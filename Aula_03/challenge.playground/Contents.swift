import UIKit

// Challange verificar se um palavra eh palindroma
// Usar filter



func palindroma(palavra: String) -> Bool{
    return palavra == String(palavra.reversed())
}



var palavra: String = "Joao"

var palavraNormalizada = palavra.uppercased()

var result = palindroma(palavra: palavraNormalizada)

result == true ? print("\(palavra) eh palindroma") : print("\(palavra) nao eh palindroma") 
