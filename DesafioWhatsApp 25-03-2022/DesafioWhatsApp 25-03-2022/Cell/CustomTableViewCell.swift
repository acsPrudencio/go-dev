//
//  CustomTableViewCell.swift
//  DesafioWhatsApp 25-03-2022
//
//  Created by Idwall Go Dev 014 on 25/03/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifier = "CustomTableViewCell"
    
    lazy var imageViewProfile: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "person")
        imageView.layer.cornerRadius = frame.size.height/2
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "Lorem ipsum"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.text = "Lorem ipsum"
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var dataLabel: UILabel = {
        let labeld = UILabel()
        labeld.textColor = .lightGray
        labeld.text = "00/00/0000"
        labeld.numberOfLines = 0
        labeld.font = UIFont.systemFont(ofSize: 16)
        labeld.translatesAutoresizingMaskIntoConstraints = false
        return labeld
    }()
    
    lazy var plusLabel: UILabel = {
        let plusLabel = UILabel()
        plusLabel.textColor = .lightGray
        plusLabel.text = ">"
        plusLabel.font = UIFont.boldSystemFont(ofSize: 20)
        plusLabel.translatesAutoresizingMaskIntoConstraints = false
        return plusLabel
    }()
    
    lazy var contentStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.contentMode = .top
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    lazy var contentTopStack: UIStackView = {
        let stack = UIStackView()
        stack.distribution = .equalSpacing
        stack.axis = .horizontal
        stack.alignment = .center
        stack.contentMode = .center
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(imageViewProfile)
        
        NSLayoutConstraint.activate([
            imageViewProfile.widthAnchor.constraint(equalToConstant: 50),
            imageViewProfile.heightAnchor.constraint(equalToConstant: 50),
            imageViewProfile.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            imageViewProfile.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        addSubview(contentStack)
        
        NSLayoutConstraint.activate([
            contentStack.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            contentStack.leadingAnchor.constraint(equalTo: imageViewProfile.trailingAnchor, constant: 16),
            contentStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            contentStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
        
        
        contentTopStack.addArrangedSubview(titleLabel)
        contentTopStack.addArrangedSubview(dataLabel)
        
        addSubview(plusLabel)
        NSLayoutConstraint.activate([
            plusLabel.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            plusLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)
        ])
        
        contentStack.addArrangedSubview(contentTopStack)
        contentStack.addArrangedSubview(descriptionLabel)
        

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(user: User){
        imageViewProfile.loadImage(from: user.picture)
        titleLabel.text = user.name
        descriptionLabel.text = user.lastChat
        dataLabel.text = user.latest_timestamp
        
    }


}
