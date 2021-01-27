//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Cabrera Navarro, Kevin Oswaldo on 26/01/2021.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var recalculatePressed: UIButton!
    @IBOutlet weak var backgroundView: UIImageView!
    
    var bmiValue: String?;
    var bmiColor: UIColor?;
    var bmiAdvice: String?;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bmiLabel.text = bmiValue;
        adviceLabel.text = bmiAdvice;
        backgroundView.backgroundColor = bmiColor;
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
