//
//  AddWeatherCityViewController.swift
//  GoodWeatherMVVM
//
//  Created by Israel Manzo on 5/30/22.
//

import Foundation
import UIKit

class AddWeatherCityViewController: UIViewController {
    
    @IBOutlet weak var cityTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Add City"
    }
    
    @IBAction func saveCity() {
        guard let city = cityTextField.text else { return }
        
        let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=f755d47212d4330310d42041f6b06a21&units=imperial")!
        let weatherResource = Resource<Any>(url: url) { data in
            print(data)
        }
        WeatherService().load(resource: weatherResource) { result in
            
        }
    }
    
    @IBAction func close() {
        dismiss(animated: true)
    }
}
