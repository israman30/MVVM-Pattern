//
//  ViewController.swift
//  MVVM-News-App
//
//  Created by Israel Manzo on 5/28/22.
//

import UIKit

class NewsListController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let services = WebService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        services.getArticles(with: URL(string: "https://newsapi.org/v1/articles?source=google-news&sortBy=top&apiKey=066d82458ed84eeeac28a86095ec88b9")!) { _ in
            
        }
    }
    
    private func setup() {
        title = "News App"
        navigationController?.navigationBar.prefersLargeTitles = true
    }


}

