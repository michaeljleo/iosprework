//
//  ViewController.swift
//  Prework
//
//  Created by Michael Leo on 7/20/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Gets the bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Gets the total tip and multiplies it by the tip percentage
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Updates the tip amount
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Updates the total amount
        totalLabel.text = String(format: "$%.2f", total)
        
        
        
        
        
        
    }
    
}

