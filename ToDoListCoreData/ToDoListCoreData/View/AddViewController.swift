//
//  addViewController.swift
//  ToDoListCoreData
//
//  Created by Idwall Go Dev 014 on 23/03/22.
//

import Foundation
import UIKit

class AddVeiwController: UIViewController{
    
    var property: String?
    
    @IBOutlet weak var nome: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let property = property {
            print("property: \(property)")
        }
        
    }
    
}
