//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Pratham Rawat on 2/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalBillLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipSelector: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(sender: Any) {
        let bill = Double(billAmountField.text!) ?? 0
        let tipPercentage = Double(tipPercentageSlider.value)
        let tip = bill * tipPercentage
        let total = bill + tip
                
        tipPercentageLabel.text = String(format: "%d%%", Int(tipPercentage * 100))
        totalBillLabel.text = String(format: "$%.2f", total)
        tipLabel.text = String(format: "+   $%.2f", tip)
    }
    
    @IBAction func updateSlider() {
        let tipPercentages = [0.15, 0.18, 0.20]
        tipPercentageSlider.value = Float(tipPercentages[tipSelector.selectedSegmentIndex])
        
        tipPercentageLabel.text = String(format: "%d%%", Int(Double(tipPercentageSlider.value) * 100))
    }
    
}

