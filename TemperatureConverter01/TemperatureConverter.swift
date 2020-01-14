//
//  TemperatureConverter.swift
//  TemperatureConverter01
//
//  Created by Siddharth Kurnal on 1/13/20.
//  Copyright © 2020 Siddharth Kurnal. All rights reserved.
//

import Foundation

class TemperatureConverter {
    func celciusToFahrenheit(_ celcius: Double) -> Double {
        return celcius * (9/5) + 32
    }
    
    func fahrenheitToCelcius(_ fahrenheit: Double) -> Double {
        return (fahrenheit - 32) * 5/9
    }
}
