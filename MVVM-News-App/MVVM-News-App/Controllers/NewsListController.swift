//
//  ViewController.swift
//  MVVM-News-App
//
//  Created by Israel Manzo on 5/28/22.
//

import UIKit

class NewsListController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        title = "News App"
        navigationController?.navigationBar.prefersLargeTitles = true
    }


}
