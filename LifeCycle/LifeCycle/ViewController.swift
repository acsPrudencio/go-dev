//
//  ViewController.swift
//  LifeCycle
//
//  Created by Idwall Go Dev 014 on 24/03/22.
//

import UIKit


class ViewController: UIViewController {
    
    override func loadView() {
        // Primeiro ciclo iniciado
        super.loadView()
        print("loadView")
    }

    override func viewDidLoad() {
        // Quando a tela estár carregada
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //Iniciar animações
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        //disfazer o que foi feito no viewDidAppear
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }


}

