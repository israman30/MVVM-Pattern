//
//  AddWeatherCityViewController.swift
//  GoodWeatherMVVM
//
//  Created by Israel Manzo on 5/30/22.
//

import Foundation
import UIKit

protocol AddWeatherDelegate {
    func addWeatherDidSaved(vm: WeatherViewModel)
}

class AddWeatherCityViewController: UIViewController {
    
    @IBOutlet weak var cityTextField: UITextField!
    private var addWeatherViewModel = AddWeatherViewModel()
    
    var weatherDelegate: AddWeatherDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Add City"
    }
    
    @IBAction func saveCity() {
        guard let city = cityTextField.text else { return }
        addWeatherViewModel.addWeather(for: city) { vm in
            self.weatherDelegate?.addWeatherDidSaved(vm: vm)
            self.dismiss(animated: true)
        }
    }
    
    @IBAction func close() {
        dismiss(animated: true)
    }
}
