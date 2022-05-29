//
//  ArticleViewModel.swift
//  MVVM-News-App
//
//  Created by Israel Manzo on 5/28/22.
//

import Foundation

struct ArticlesListViewModel {
    
    let articles: [Articles]
    
    func numberOfSections() -> Int {
        return 1
    }
    
    func numberOfRowsIn(section: Int) -> Int {
        return articles.count
    }
    
    func articlesAt(index: Int) -> ArticleViewModel {
        let article = articles[index]
        return ArticleViewModel(articles: article)
    }
}

struct ArticleViewModel {
    
    private let articles: Articles
    
    init(articles: Articles) {
        self.articles = articles
    }
    
    var title: String {
        return articles.title
    }
    
    var description: String {
        return articles.description
    }
}

