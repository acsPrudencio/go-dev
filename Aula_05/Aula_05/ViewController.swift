//
//  ViewController.swift
//  Aula_05
//
//  Created by Idwall Go Dev 014 on 15/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var senhaTextField: UITextField!
    @IBOutlet weak var autenticarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func autenticar(_ sender: UIButton) {
        let email = emailTextField.text!
        let senha = senhaTextField.text!
                
                
        if isAutenticado(email: email, senha: senha){
            let alert = UIAlertController(title: "Bem-vindo", message: "Doug", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Confirmar", style: .default, handler: { Action in
                print("Autenticado com sucesso!")
            }))
            present(alert, animated: true, completion: nil)
        }else{
            let alert = UIAlertController(title: "Dados incorretos", message: "Error", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Confirmar", style: .default, handler: { Action in
                print("Senha ou email invalido!")
            }))
            present(alert, animated: true, completion: nil)
        }
                
                
    }
    
    
}

func isAutenticado(email: String, senha: String) -> Bool{
    if email == "antonio@mail.com" && senha == "123"{
        return true
    }else{
        return false
    }
}
