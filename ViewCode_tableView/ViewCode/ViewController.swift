//
//  ViewController.swift
//  ViewCode
//
//  Created by Douglas Nunes on 22/03/22.
//

import UIKit

class ViewController: UIViewController {

	//var safeArea: UILayoutGuide!
	
	lazy var tableview: UITableView = {
		let table = UITableView(frame: .zero, style: .plain)
		table.translatesAutoresizingMaskIntoConstraints = false
		return table
	}()
	
	override func viewWillAppear(_ animated: Bool) {
		   super.viewWillAppear(animated)
		
		   navigationController?.navigationBar.prefersLargeTitles = true

		   let appearance = UINavigationBarAppearance()
		   appearance.backgroundColor = .purple
		   appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
		   appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]

		   navigationController?.navigationBar.tintColor = .white
		   navigationController?.navigationBar.standardAppearance = appearance
		   navigationController?.navigationBar.compactAppearance = appearance
		   navigationController?.navigationBar.scrollEdgeAppearance = appearance
   }
	
	override func viewDidLoad() {
		super.viewDidLoad()

		title = "View Controller"
		
		view.backgroundColor = .white
		
		view.addSubview(tableview)
		
		tableview.delegate = self
		tableview.dataSource = self
		
		NSLayoutConstraint.activate([
			tableview.topAnchor.constraint(equalTo: view.topAnchor),
			tableview.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			tableview.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor)
		])
		
		tableview.register(CustomTableViewCell.self, forCellReuseIdentifier: CustomTableViewCell.identifier)
		
	}


}

extension ViewController: UITableViewDelegate {
	
}

extension ViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 10
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell else {
			return UITableViewCell()
		}
		
		return cell
	}
	
	
}

