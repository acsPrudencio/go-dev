//
//  ViewController.swift
//  webViewSafari
//
//  Created by Douglas Nunes on 28/03/22.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

	lazy var button: UIButton = {
		let button = UIButton(type: .custom)
		button.setTitle("Call Safari", for: .normal)
		button.setTitleColor(UIColor.white, for: .normal)
		button.backgroundColor = .orange
		button.layer.cornerRadius = 16
		button.clipsToBounds = true
		button.addTarget(self, action: #selector(callSafari), for: .touchUpInside)
		button.translatesAutoresizingMaskIntoConstraints = false
		return button
	}()

	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = .white
		
		view.addSubview(button)
		
		NSLayoutConstraint.activate([
			button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
			button.heightAnchor.constraint(equalToConstant: 45),
			button.widthAnchor.constraint(equalToConstant: 150)
		])
		
	}
	
	@objc
	func callSafari() {
		
		if let url = URL(string: "https://www.apple.com") {
			
			let config = SFSafariViewController.Configuration()
			config.entersReaderIfAvailable = true
			
			let viewController = SFSafariViewController(url: url, configuration: config)
			viewController.delegate = self
			viewController.preferredControlTintColor = .black
			viewController.dismissButtonStyle = .done
			viewController.preferredBarTintColor = UIColor(red: 0.87, green: 0.87, blue: 0.87, alpha: 1.00)
			
			present(viewController, animated: true)
			
			
		}
		
	}

}

extension ViewController: SFSafariViewControllerDelegate {
	
	func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
		controller.dismiss(animated: true, completion: nil)
	}
	
	func safariViewController(_ controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool) {
		print("didLoadSuccessfully: \(didLoadSuccessfully)")
	}
	
}

