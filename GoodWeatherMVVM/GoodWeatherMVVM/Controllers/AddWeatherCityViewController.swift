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
        
    }
    
    @IBAction func close() {
        dismiss(animated: true)
    }
}
