//
//  ViewController.swift
//  MVVM-News-App
//
//  Created by Israel Manzo on 5/28/22.
//

import UIKit

class NewsListController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var articleListViewModel: ArticlesListViewModel!
    
    let services = WebService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        services.getArticles(with: URL(string: "https://newsapi.org/v1/articles?source=google-news&sortBy=top&apiKey=066d82458ed84eeeac28a86095ec88b9")!) { articles in
            guard let articles = articles else { return }
            self.articleListViewModel = ArticlesListViewModel(articles: articles)
            self.tableView.reloadData()
        }
    }
    
    private func setup() {
        title = "News App"
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.dataSource = self
        tableView.delegate = self
    }

}
extension NewsListController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return articleListViewModel == nil ? 0 : articleListViewModel.numberOfSections
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articleListViewModel.numberOfRowsIn(section: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ArticleTableViewCell
        let article = articleListViewModel.articlesAt(index: indexPath.row)
        cell.titleLabel.text = article.title
        cell.descriptionLable.text = article.description
        return cell
    }
}

