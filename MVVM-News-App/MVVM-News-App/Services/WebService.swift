//
//  WebService.swift
//  MVVM-News-App
//
//  Created by Israel Manzo on 5/28/22.
//

import Foundation

// "https://newsapi.org/v1/articles?source=google-news&sortBy=top&apiKey=066d82458ed84eeeac28a86095ec88b9"


class WebService {
    
    func getArticles(with url: URL, completion: @escaping([Articles]?) -> Void) {
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                completion(nil)
            }
            guard let data = data else {
                return
            }
            do {
                let articlesList = try JSONDecoder().decode(ArticlesList.self, from: data)
                print(articlesList.articles)
//                DispatchQueue.main.async {
//                    completion(articlesList.articles)
//                }
            } catch {
                print("Error: \(error.localizedDescription)")
                completion(nil)
            }
        }
        task.resume()
    }
}
