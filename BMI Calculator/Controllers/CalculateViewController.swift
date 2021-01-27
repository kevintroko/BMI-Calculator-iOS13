//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!;
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    
    var calculatorBrain = CalculatorBrain();
    
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }


    @IBAction func heightChanged(_ sender: UISlider) {
        let height = (String(format: "%.2f", sender.value));
        heightLabel.text = "\(height)m";
    }
    
    
    @IBAction func weightChanged(_ sender: UISlider) {
        let weight = (String(format: "%.0f", sender.value));
        weightLabel.text = "\(weight)kg";
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        calculatorBrain.calculateBMI(height: heightSlider.value, weight: weightSlider.value);
        self.performSegue(withIdentifier: "goToResult", sender: self);
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "goToResult") {
            let destinationVC = segue.destination as! ResultsViewController;
            destinationVC.bmiValue = calculatorBrain.getBMIValue();
            destinationVC.bmiAdvice = calculatorBrain.getAdvice();
            destinationVC.bmiColor = calculatorBrain.getColor();
            
        }
    }
}

