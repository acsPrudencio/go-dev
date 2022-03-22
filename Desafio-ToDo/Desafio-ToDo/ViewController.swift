//
//  ViewController.swift
//  Desafio-ToDo
//
//  Created by Idwall Go Dev 014 on 19/03/22.
//

import UIKit

struct tarefa {
    var titulo: String
    var descricao: String
}


class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    private var tarefas = [tarefa]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "ToDo List"
        
        registerCell()
        delegates()
    }

    private func delegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func registerCell() {
        //let nib = UINib(nibName: ItemTableViewCell.identifier, bundle: nil)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    @IBAction func didTapAddButton(){
        
    }
}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = tarefas[indexPath.row].titulo
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tarefas.count
    }
    
}

