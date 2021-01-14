//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//

import UIKit

class CalculateViewController: UIViewController {
    
    private var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightText: UILabel!
    @IBOutlet weak var weightText: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        heightText.text = "\(String(format: "%.2f", sender.value))m"
    }
    @IBAction func wieghtSliderChanged(_ sender: UISlider) {
        
        weightText.text = "\(Int(sender.value))Kg"
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        if (weight != 0.0 && height != 0.0) {
            calculatorBrain.calculateBMI(height, weight)
            self.performSegue(withIdentifier: "goToResult", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmiValue = calculatorBrain.getBMIFormated()
            destinationVC.advice = calculatorBrain.bmi?.advice
            destinationVC.backgraundColor = calculatorBrain.bmi?.color
        }
    }
    
}

