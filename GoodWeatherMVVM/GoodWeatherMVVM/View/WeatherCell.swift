//
//  WeatherCell.swift
//  GoodWeatherMVVM
//
//  Created by Israel Manzo on 5/30/22.
//

import Foundation
import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
}

// https://api.openweathermap.org/data/2.5/weather?q=newyork,NY&appid=f755d47212d4330310d42041f6b06a21
// https://api.openweathermap.org/data/2.5/weather?q=washington&appid=f755d47212d4330310d42041f6b06a21
//https://api.openweathermap.org/data/2.5/weather?q=Washington&appid=f755d47212d4330310d42041f6b06a21&units=imperial
