//
//  ViewController.swift
//  ToDoListCoreData
//
//  Created by Idwall Go Dev 014 on 22/03/22.
//

import UIKit

class ViewController: UIViewController {

    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
  //  @IBOutlet var tableView: UITableView!
    
    let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    var tarefas = [ToDoListItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        title = "ToDo List"
        view.addSubview(tableView)
        delegates()
        tableView.frame = view.bounds
        
    }
    
    func getAllItems(){
        do{
            tarefas = try context.fetch(ToDoListItem.fetchRequest())
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }

            
        }catch {
            //TODO erro
        }
    }
    
    func createItem(name: String){
        let newItem = ToDoListItem(context: context)
        newItem.name = name
        newItem.createdAt = Date()
        
        do{
            try context.save()
        }catch {
            
        }
    }
    
    func deleteItem(item: ToDoListItem){
        context.delete(item)
        
        do{
            try context.save()
        }catch {
            
        }
    }

    func updateItem(Item: ToDoListItem, newName: String){
        Item.name = newName
        
        do{
            try context.save()
        }catch {
            
        }
    }
    
    func delegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tarefas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tarefa = tarefas[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = tarefa.name
        return cell
    }
    
}
