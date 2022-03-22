//
//  CustomCollectionViewCell.swift
//  Desafio21-03-2022
//
//  Created by Idwall Go Dev 014 on 21/03/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CustomCollectionViewCell"
    
    @IBOutlet var fotoPerfil: UIImageView!
    @IBOutlet var nome: UILabel!
    @IBOutlet var empresa: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(dado: Dados){
        nome.text = dado.name
        empresa.text = dado.company.name
     //   fotoPerfil.image = dado.photo.
    }

}
