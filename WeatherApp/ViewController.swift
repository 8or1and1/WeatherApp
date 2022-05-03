//
//  ViewController.swift
//  WeatherApp
//
//  Created by Роман Носуля on 03.05.2022.
//

import UIKit

class ViewController: UIViewController {

	
	@IBOutlet weak var searchBar: UISearchBar!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		searchBar.delegate = self
		
	}

}

extension ViewController: UISearchBarDelegate{
	func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
		let urlString = "http://api.weatherstack.com/current?access_key=8b008068b581fb1a492b58c629ee25ed&query=\(searchBar.text!)"
		let url = URL.init(string: urlString)
		let task = URLSession.shared.dataTask(with: url!) { data, response, error in
			
		}
		task.resume()
	}
}
