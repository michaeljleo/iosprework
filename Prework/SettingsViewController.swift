//
//  SettingsViewController.swift
//  Prework
//
//  Created by Michael Leo on 7/23/21.
//

import UIKit

class SettingsViewController: UIViewController {

    
   
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var defaultTipLabel: UILabel!
    @IBOutlet weak var defaultTipStepper: UIStepper!
    
    
    //Access the UserDefaults
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Settings"
        //Retrieves the default tip and updates label
        let tip = defaults.integer(forKey: "tipDefault")
        defaultTipLabel.text = String(format: "%d", tip) + "%"
        defaultTipStepper.value = Double(tip)
    }
    

    //Retrieves the current stepper value and stores it as the new default
    @IBAction func saveChanges(_ sender: Any) {
        let tipPercentage = Int(defaultTipStepper.value)
        
        defaults.set(tipPercentage, forKey: "tipDefault")
        defaults.synchronize()
    }
    
    //Updates the tip percentage label when stepper is pressed
    
    @IBAction func updateTipLabel(_ sender: Any) {
        defaultTipLabel.text = String(format: "%.0f", defaultTipStepper.value) + "%"
    }
    
    

}
