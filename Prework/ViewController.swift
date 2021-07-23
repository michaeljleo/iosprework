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
    @IBOutlet weak var tipControl: UISlider!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Gets the bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Gets the total tip and multiplies it by the tip percentage
        //Casts the value to an int to only get whole percentages
        let tipPercentages = Int(tipControl.value)
        
        
        
        
        //Recasts as a Double to avoid error
        let tip = bill * (Double(tipPercentages) / 100)
        let total = bill + tip
        
        //Updates the tip percentage label
        tipPercentageLabel.text = String(tipPercentages) + "%"
        
        //Updates the tip amount
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Updates the total amount
        totalLabel.text = String(format: "$%.2f", total)
        
        
        
        
        
    }
    
}

