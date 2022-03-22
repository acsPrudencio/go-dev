//
//  AddNewTarefaViewController.swift
//  Desafio-ToDo
//
//  Created by Idwall Go Dev 014 on 21/03/22.
//

import UIKit

class AddNewTarefaViewController: UIViewController{
    
    @IBOutlet var textFieldTitle: UITextField!
    public var completionHandle: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldTitle.becomeFirstResponder()
        
        delegates()
    }
    
    private func delegates(){
        
        textFieldTitle.delegate = self
    }
    
    @IBAction func didTapSaveButton(){
        
    }
    
}

extension AddNewTarefaViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textFieldTitle: UITextField) -> Bool {
        textFieldTitle.resignFirstResponder()
        return true
    }
    
}
