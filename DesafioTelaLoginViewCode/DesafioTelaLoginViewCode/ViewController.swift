//
//  ViewController.swift
//  DesafioTelaLoginViewCode
//
//  Created by Idwall Go Dev 014 on 24/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    var safeArea: UILayoutGuide!
    
    
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.numberOfLines = 0
        label.text = "Login"
        label.font = UIFont.systemFont(ofSize: 30)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var inputEmailLabel: UITextField = {
        let inputText = UITextField()
        inputText.textColor = .black
        inputText.placeholder = "Insira seu e-mail"
        inputText.textAlignment = .center
        inputText.layer.borderWidth = 1
        inputText.layer.borderColor = UIColor.systemGray5.cgColor
        inputText.translatesAutoresizingMaskIntoConstraints = false
        inputText.font = UIFont.systemFont(ofSize: 25)
        inputText.layer.cornerRadius = 5
        return inputText
    }()
    
    lazy var senhaLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.numberOfLines = 0
        label.text = "Senha"
        label.font = UIFont.systemFont(ofSize: 30)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var inputSenhaLabel: UITextField = {
        let inputText = UITextField()
        inputText.layer.borderWidth = 1
        inputText.layer.borderColor = UIColor.systemGray5.cgColor
        inputText.textColor = .black
        inputText.placeholder = "Insira sua senha"
        inputText.textAlignment = .center
        inputText.translatesAutoresizingMaskIntoConstraints = false
        inputText.font = UIFont.systemFont(ofSize: 25)
        inputText.layer.cornerRadius = 5
        return inputText
    }()
    
    lazy var bannerImageView: UIImageView = {
       let banner = UIImageView()
        banner.image = UIImage(named: "bannerMago")
        banner.translatesAutoresizingMaskIntoConstraints = false
        return banner
    }()
    
    lazy var buttonLabel: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Autenticar", for: UIControl.State.normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.tintColor = .black
        button.layer.backgroundColor = UIColor.systemGray5.cgColor
        button.layer.borderColor = UIColor.systemGray5.cgColor
        button.layer.borderWidth = 4
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(self.tapAutenticar(sender:)), for: .touchUpInside)
        return button
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        safeArea = view.layoutMarginsGuide
        
        title = "Desafio Login viewCode"
        view.backgroundColor = .white
        
        view.addSubview(bannerImageView)
        view.addSubview(loginLabel)
        view.addSubview(inputEmailLabel)
        view.addSubview(senhaLabel)
        view.addSubview(inputSenhaLabel)
        view.addSubview(buttonLabel)
        
        bannerImageView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 50).isActive = true
        bannerImageView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        bannerImageView.widthAnchor.constraint(equalToConstant: 400).isActive = true
        bannerImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        loginLabel.topAnchor.constraint(equalTo: bannerImageView.bottomAnchor, constant: 10).isActive = true
        loginLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        loginLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        
        inputEmailLabel.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 10).isActive = true
        inputEmailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        inputEmailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        
        senhaLabel.topAnchor.constraint(equalTo: inputEmailLabel.bottomAnchor, constant: 10).isActive = true
        senhaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        senhaLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        
        inputSenhaLabel.topAnchor.constraint(equalTo: senhaLabel.bottomAnchor, constant: 10).isActive = true
        inputSenhaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        inputSenhaLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        
        
        buttonLabel.topAnchor.constraint(equalTo: inputSenhaLabel.bottomAnchor, constant: 50).isActive = true
        buttonLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        buttonLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        
        
    }
    
    
    @objc func tapAutenticar(sender:UIButton){
        // TODO
        let email = inputEmailLabel.text!
        let senha = inputSenhaLabel.text!

        if isAutenticado(email: email, senha: senha){
           let alert = UIAlertController(title: "Bem-vindo", message: "Antonio", preferredStyle: .alert)
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
    
    func isAutenticado(email: String, senha: String) -> Bool{
        if email == "antonio@mail.com" && senha == "123"{
            return true
        }else{
            return false
        }
    }

    	


}

