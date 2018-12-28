//
//  ViewController.swift
//  Tipster - The Tip Calculator
//
//  Created by Saurabh Mithe on 12/18/18.
//  Copyright © 2018 Saurabh Mithe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billFieldText: UILabel!
    @IBOutlet weak var amountText: UILabel!
    @IBOutlet weak var totalText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = Settings.sharedInstance.backgroundColor;
        billField.textColor = Settings.sharedInstance.textColor;
        totalLabel.textColor = Settings.sharedInstance.textColor;
        billFieldText.textColor = Settings.sharedInstance.textColor;
        amountText.textColor = Settings.sharedInstance.textColor;
        totalText.textColor = Settings.sharedInstance.textColor;
        tipControl.tintColor = Settings.sharedInstance.textColor;
        tipLabel.textColor = Settings.sharedInstance.textColor;
        totalLabel.textColor = Settings.sharedInstance.textColor;
        self.title = "Tip Calculator";
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.view.backgroundColor = Settings.sharedInstance.backgroundColor;
        billField.textColor = Settings.sharedInstance.textColor;
        totalLabel.textColor = Settings.sharedInstance.textColor;
        billFieldText.textColor = Settings.sharedInstance.textColor;
        amountText.textColor = Settings.sharedInstance.textColor;
        totalText.textColor = Settings.sharedInstance.textColor;
        tipControl.tintColor = Settings.sharedInstance.textColor;
        tipLabel.textColor = Settings.sharedInstance.textColor;
        totalLabel.textColor = Settings.sharedInstance.textColor;
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18, 0.20, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%0.2f", tip)
        totalLabel.text = String(format: "$%0.2f", total)
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
}

