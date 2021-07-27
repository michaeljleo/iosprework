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
    @IBOutlet weak var numOfPeopleLabel: UILabel!
    @IBOutlet weak var numOfPeopleStepper: UIStepper!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Tip Calculator"
        //Gets the tip percentage from default value
        let tip = defaults.integer(forKey: "tipDefault")
        tipControl.value = Float(tip)
        tipPercentageLabel.text = String(tip) + "%"
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Gets the bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Gets the tip percentage
        //Casts the value to an int to only get whole percentages
        let tipPercentages = Int(tipControl.value)
        
        //Gets the number of people
        let numPeople = Int(numOfPeopleStepper.value)
        
        
        //Recasts as a Double to avoid error
        let tip = (bill * (Double(tipPercentages) / 100)) / Double(numPeople)
        let total = bill + (tip * Double(numPeople))
        
        //Updates the tip percentage label
        tipPercentageLabel.text = String(tipPercentages) + "%"
        
        //Updates the tip amount
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Updates the total amount
        totalLabel.text = String(format: "$%.2f", total)
        
        //Updates the number of people
        numOfPeopleLabel.text = "Number of People: " + String(numPeople)
        
        
        
    }
    
}

