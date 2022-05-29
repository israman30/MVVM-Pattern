//
//  Articles.swift
//  MVVM-News-App
//
//  Created by Israel Manzo on 5/28/22.
//

import Foundation

struct ArticlesList: Decodable {
    let articles: [Articles]
}
struct Articles: Decodable {
    let title: String
    let description: String
}
