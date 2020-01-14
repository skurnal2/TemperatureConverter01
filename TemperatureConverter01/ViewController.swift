//
//  ViewController.swift
//  TemperatureConverter01
//
//  Created by Siddharth Kurnal on 1/13/20.
//  Copyright © 2020 Siddharth Kurnal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputTemp: UITextField!
    
   
    @IBAction func convertTemperature(_ sender: UIButton) {
        let button = sender as UIButton
        if button.tag == 1 {
            let fahrenheit = Double(inputTemp.text!)!
            let celcius = tempConverter.fahrenheitToCelcius(fahrenheit)
            OutputLabel.text = "\(celcius)°C"
        } else if button.tag == 2 {
            let celcius = Double(inputTemp.text!)!
            let fahrenheit = tempConverter.celciusToFahrenheit(celcius)
            OutputLabel.text = "\(fahrenheit)°F"
        }
    }
    
    @IBOutlet weak var OutputLabel: UILabel!
    
    let tempConverter = TemperatureConverter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let celcius = 0.0
        let fahrenheit = tempConverter.celciusToFahrenheit(celcius)
        OutputLabel.text = "\(fahrenheit)°F"
        //OR this way
        //OutputLabel.text = String(fahrenheit)
    }
}

