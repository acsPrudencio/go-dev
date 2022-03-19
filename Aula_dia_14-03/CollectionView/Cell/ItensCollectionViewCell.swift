//
//  ItensCollectionViewCell.swift
//  CollectionView
//
//  Created by Idwall Go Dev 014 on 18/03/22.
//

import UIKit

class ItensCollectionViewCell: UICollectionViewCell {
    
    static var identifier = "ItensCollectionViewCell"
    
    @IBOutlet weak var imageLogo: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setup(image: String){
        if let image = UIImage(named: image){
            imageLogo.image = image
        }
    }

}
