//
//  Constants.swift
//  GoodWeatherMVVM
//
//  Created by Israel Manzo on 5/30/22.
//

import Foundation

struct Constans {
    
    struct URLs {
        static func urlForWeather(city: String) -> URL {
//            let userDefaults = UserDefaults.standard
//            let unit = (userDefaults.value(forKey: "unit") as? String) ?? "imperial"
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=f755d47212d4330310d42041f6b06a21&units=imperial")!
        }
    }
}
