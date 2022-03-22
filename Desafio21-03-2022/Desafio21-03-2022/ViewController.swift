//
//  ViewController.swift
//  Desafio21-03-2022
//
//  Created by Idwall Go Dev 014 on 21/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var collection: UICollectionView!

    lazy var dados = [Dados](){
        didSet {
            DispatchQueue.main.async {
                self.collection.reloadData()
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        delegates()
        registerCell()
        layout()
    }
    
    private func layout(){
        let layout = UICollectionViewFlowLayout()
        
        layout.itemSize = CGSize(width: view.frame.size.width, height: 100 )
        
        collection.collectionViewLayout = layout
    }
    
    private func delegates(){
        collection.delegate = self
        collection.dataSource = self
    }
    
    private func registerCell(){
        let nib = UINib(nibName: "CustomCollectionViewCell", bundle: nil)
        collection.register(nib, forCellWithReuseIdentifier: "CustomCollectionViewCell")
    }
   
}

extension ViewController: UICollectionViewDelegate{
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        dados.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collection.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath) as? CustomCollectionViewCell else {return UICollectionViewCell()}
        
        cell.setup(dado: dados[indexPath.row])
        return cell
    }
    
    
}

