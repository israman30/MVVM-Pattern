//
//  ViewController.swift
//  GoodWeatherMVVM
//
//  Created by Israel Manzo on 5/29/22.
//

import UIKit

class WeatherListController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
        let resorces = Resource<WeatherResponse>(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?q=Washington&appid=f755d47212d4330310d42041f6b06a21&units=imperial")!) { data in
            
            try? JSONDecoder().decode(WeatherResponse.self, from: data)
        }
        WeatherService().load(resource: resorces) { response in
            if let response = response {
                print(response)
            }
        }
    }
    
    private func setup() {
        title = "Open Weather"
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension WeatherListController: AddWeatherDelegate {
    func addWeatherDidSaved(vm: WeatherViewModel) {
        print(vm)
    }
}

extension WeatherListController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! WeatherCell
        
        cell.cityLabel.text = "New York"
        cell.temperatureLabel.text = "85°"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddWeather" {
            prepareForSegueForAddWeather(with: segue)
        }
    }
    
    func prepareForSegueForAddWeather(with segue: UIStoryboardSegue) {
        guard let nav = segue.destination as? UINavigationController else { return }
        guard let addWeatherCityVC = nav.viewControllers.first as? AddWeatherCityViewController else { return }
        addWeatherCityVC.weatherDelegate = self
    }
}
