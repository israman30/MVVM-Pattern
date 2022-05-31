//
//  AddWeatherViewModel.swift
//  GoodWeatherMVVM
//
//  Created by Israel Manzo on 5/30/22.
//

import Foundation

class AddWeatherViewModel {
    
    func addWeather(for city: String, completion: @escaping(WeatherViewModel) -> Void) {
        let weatherURL = Constans.URLs.urlForWeather(city: city)
        let weatherResource = Resource<WeatherResponse>(url: weatherURL) { data in
            return try? JSONDecoder().decode(WeatherResponse.self, from: data)
        }
        
        WeatherService().load(resource: weatherResource) { result in
            if let result = result {
                let vm = WeatherViewModel(weather: result)
                completion(vm)
            }
        }
    }
}
