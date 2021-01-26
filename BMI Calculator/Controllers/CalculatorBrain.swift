//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Cabrera Navarro, Kevin Oswaldo on 26/01/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi: String = "0.0";
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = String(format: "%.1f", weight / pow(height, 2.0));
    }
}
