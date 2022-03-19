//
//  ViewController.swift
//  CollectionView
//
//  Created by Idwall Go Dev 014 on 18/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    let teams = ["Furia", "Team Liquid", "MIBR"]

    @IBOutlet weak var collection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegates()
        registerCell()
    }
    
    private func delegates(){
        collection.delegate = self
        collection.dataSource = self
    }
    
    private func registerCell(){
        let nib = UINib(nibName: ItensCollectionViewCell.identifier, bundle: nil)
    
        collection.register(nib, forCellWithReuseIdentifier: ItensCollectionViewCell.identifier)
    }


    private func collectionLayout(){
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: view.frame.size.width, height: 50)
        
        collection.collectionViewLayout = layout
    }
}

extension ViewController: UICollectionViewDelegate {
    
}

extension ViewController: UICollectionViewDataSource {
  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return teams.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ItensCollectionViewCell.identifier, for: indexPath) as? ItensCollectionViewCell else { return UICollectionViewCell() }
        
        let team = teams[indexPath.row]
        
        cell.setup(image: team)
        
        return cell
    }
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
}


