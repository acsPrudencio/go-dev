//
//  CustomTableViewCell.swift
//  tableView2
//
//  Created by Idwall Go Dev 014 on 17/03/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var logoImagemView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(logo: String, name: String, description: String){
        logoImagemView.image = UIImage(named: logo)
        nameLabel.text = name
        descriptionLabel.text = description
    }


}
