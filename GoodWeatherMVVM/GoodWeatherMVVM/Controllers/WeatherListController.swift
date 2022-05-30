//
//  ViewController.swift
//  GoodWeatherMVVM
//
//  Created by Israel Manzo on 5/29/22.
//

import UIKit

class WeatherListController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        title = "Open Weather"
        navigationController?.navigationBar.prefersLargeTitles = true
    }


}

