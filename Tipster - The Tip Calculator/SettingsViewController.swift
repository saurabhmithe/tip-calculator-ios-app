//
//  SettingsViewController.swift
//  Tipster - The Tip Calculator
//
//  Created by Saurabh Mithe on 12/27/18.
//  Copyright © 2018 Saurabh Mithe. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var darkModeLabel: UILabel!
    @IBOutlet weak var switchButton: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = Settings.sharedInstance.backgroundColor;
        darkModeLabel.textColor = Settings.sharedInstance.textColor;
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.view.backgroundColor = Settings.sharedInstance.backgroundColor;
        darkModeLabel.textColor = Settings.sharedInstance.textColor;
    }

    
    @IBAction func darkModeSwitch(_ sender: Any) {
        if (switchButton.isOn) {
            Settings.sharedInstance.backgroundColor = UIColor.black;
            Settings.sharedInstance.textColor = UIColor.white;
        }
        if (!switchButton.isOn){
            Settings.sharedInstance.backgroundColor = UIColor.white;
            Settings.sharedInstance.textColor = UIColor.black;
        }
        self.view.backgroundColor = Settings.sharedInstance.backgroundColor;
        darkModeLabel.textColor = Settings.sharedInstance.textColor;
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
