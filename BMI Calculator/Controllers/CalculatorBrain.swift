//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Cabrera Navarro, Kevin Oswaldo on 26/01/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?;
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0);
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1);
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice";
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2.0);
        
        if (bmiValue < 19.5) {
            bmi = BMI(value: bmiValue, advice: "Underweight", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1));
        } else if (bmiValue < 24.9) {
            bmi = BMI(value: bmiValue, advice: "Normal weight", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1));
        } else {
            bmi = BMI(value: bmiValue, advice: "Overweight", color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1));
        }
            
        
    }
}
