//
//  SecondViewController.swift
//  ViewCode
//
//  Created by Idwall Go Dev 014 on 25/03/22.
//

import UIKit

class SecondViewController: UIViewController {

    public var idProduct: String?
    
    lazy var closeButton: UIButton = {
        let closeButton = UIButton(type: .close)
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.tintColor = .orange
        closeButton.addTarget(self, action: #selector(closeModal), for: .touchUpInside)
        return closeButton
    }()
    override func viewDidLoad() {
        title = "Second ViewController"
        self.view.backgroundColor = .orange
        super.viewDidLoad()
        self.view.addSubview(self.closeButton)
        configConstraints()

        // Do any additional setup after loading the view.
//
//        if let idProduct = idProduct {
//            print(idProduct)
//        }

    }
    
    @objc func closeModal(){
//        print("Sucesso")
//        dismiss(animated: true)
        dismiss(animated: true, completion: {
            print("Sucesso dismiss")
            
        })
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            self.closeButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 15),
            self.closeButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -15),
            self.closeButton.heightAnchor.constraint(equalToConstant: 30),
            self.closeButton.widthAnchor.constraint(equalToConstant: 30)

            
        ])
    }

}
