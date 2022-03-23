//
//  CustomTableViewCell.swift
//  DesafioConsumoAPI
//
//  Created by Idwall Go Dev 014 on 23/03/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    

    static let identifier = "CustomTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        logoImage.layer.cornerRadius = logoImage.frame.height/2
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

    func setup(user: User){
        logoImage.loadImage(from: user.photo)
        nameLabel.text = user.name
        companyLabel.text =  user.company.name
    }
}
