//
//  ViewController.swift
//  aulaNavigationSchemes
//
//  Created by Idwall Go Dev 014 on 22/03/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func getNameApp(){
         let schemes = "map://"
         
         if let url = URL(string: schemes){
             if UIApplication.shared.canOpenURL(url){
                 UIApplication.shared.open(url)
             }
         }
     }

}

