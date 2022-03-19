//
//  ViewController.swift
//  tableView2
//
//  Created by Idwall Go Dev 014 on 17/03/22.
//

import UIKit

struct Teams {
    var logo: String
    var name: String
    var description: String
}

class ViewController: UIViewController {
        
    @IBOutlet weak var tableview: UITableView!
    
    var teams: [Teams] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Teams"
        
        delegates()
        TeamsData()
        
    }
    
    private func delegates(){
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    private func TeamsData(){
        teams = [Teams(logo: "FURIA", name: "Furia", description: "Team BR"),
                 Teams(logo: "LIQUID", name: "Liquid", description: "Team NLD"),
                 Teams(logo: "MIBR", name: "MIBR", description: "Team BR"),
                 Teams(logo: "FURIA", name: "Furia", description: "Team BR"),
                 Teams(logo: "LIQUID", name: "Liquid", description: "Team NLD"),
                 Teams(logo: "MIBR", name: "MIBR", description: "Team BR"),
                 Teams(logo: "FURIA", name: "Furia", description: "Team BR"),
                 Teams(logo: "LIQUID", name: "Liquid", description: "Team NLD"),
                 Teams(logo: "MIBR", name: "MIBR", description: "Team BR"),
                 Teams(logo: "FURIA", name: "Furia", description: "Team BR"),
                 Teams(logo: "LIQUID", name: "Liquid", description: "Team NLD"),
                 Teams(logo: "MIBR", name: "MIBR", description: "Team BR")]
    }


}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Time \(teams[indexPath.row].name)")
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as? CustomTableViewCell else { return UITableViewCell() }
        
        let team = teams[indexPath.row]
        
        cell.setup(logo: team.logo, name: team.name, description: team.description)
        
        return cell
    }
    
    
}

