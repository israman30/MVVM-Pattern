//
//  WebService.swift
//  GoodWeatherMVVM
//
//  Created by Israel Manzo on 5/30/22.
//

import Foundation


struct Resource<T> {
    let url: URL
    let parse: (Data) -> T?
}

final class WeatherService {
    
    func load<T>(resource: Resource<T>, completion: @escaping(T?) -> Void) {
        let task = URLSession.shared.dataTask(with: resource.url) { data, response, error in
            print(data)
            if let data = data {
                DispatchQueue.main.async {
                    completion(resource.parse(data))
                }
            } else {
                completion(nil)
            }
        }
        task.resume()
    }
}
