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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.black;
        self.title = "Tip Calculator";
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18, 0.20, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        billField.backgroundColor = UIColor.darkGray;
        billField.textColor = UIColor.yellow;
        tipLabel.text = String(format: "$%0.2f", tip)
        tipLabel.textColor = UIColor.yellow;
        totalLabel.text = String(format: "$%0.2f", total)
        totalLabel.textColor = UIColor.yellow;
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
}

