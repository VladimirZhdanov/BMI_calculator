//
//  ResultViewConrollerViewController.swift
//  BMI Calculator
//
//  Created by mac on 11.01.2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var backgraundColor: UIColor?

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = bmiValue
        adviceLabel.text = advice
        self.view.backgroundColor = backgraundColor
    }
    

    @IBAction func recalculateButtnPressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
   
}
