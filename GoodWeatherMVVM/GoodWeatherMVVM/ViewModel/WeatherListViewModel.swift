//
//  WeatherListViewModel.swift
//  GoodWeatherMVVM
//
//  Created by Israel Manzo on 5/30/22.
//

import Foundation


class WeatherListViewModel {
    
}

class WeatherViewModel {
    let weather: WeatherResponse
    init(weather: WeatherResponse) {
        self.weather = weather
    }
    
    var city: String {
        weather.name
    }
    var temperature: Double {
        weather.main.temp
    }
}
