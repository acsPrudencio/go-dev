//
//  ViewController.swift
//  DesafioConsumoAPI
//
//  Created by Idwall Go Dev 014 on 23/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView:UITableView!
    @IBOutlet weak var loading:UIActivityIndicatorView!
    
    lazy var users = [User](){
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        delegates()
        register()
        getUsers()
        showLoading()
    }
    
    private func register(){
        let nib = UINib(nibName: CustomTableViewCell.identifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: CustomTableViewCell.identifier)
    }
    
    private func delegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func getUsers(){
        Service.shared.getUsers { response in
            switch(response){
            case .success(let res):
                self.users = res
            case .failure(let error):
                print(error)
            }
            self.hideLoading()
        }
    }
    
    private func showLoading(){
        loading.startAnimating()
        loading.isHidden = false
    }
    private func hideLoading(){
        DispatchQueue.main.async {
            self.loading.stopAnimating()
            self.loading.isHidden = true
        }
    }


}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell else {return CustomTableViewCell()}
        
        let dataUsers = users[indexPath.row]
        
        cell.setup(user: dataUsers)
        
        return cell
    }
    
    
}

