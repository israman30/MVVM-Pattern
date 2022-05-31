//
//  WeatherResponse.swift
//  GoodWeatherMVVM
//
//  Created by Israel Manzo on 5/30/22.
//

import Foundation

struct WeatherResponse: Decodable {
    let name: String
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
    let humidity: Double
}
