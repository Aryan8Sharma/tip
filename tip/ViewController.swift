//
//  ViewController.swift
//  tip
//
//  Created by Aryan Sharma on 7/16/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billEntry: UITextField!
    
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(_ sender: Any) {
        print("Hello ")
        pritn("World ")
        view.endEditing(true)
    }
    

    @IBAction func calculateTip(_ sender: Any) {
        //Get the input
        let bill = Double(billEntry.text!) ?? 0
        //Calculate tip and total
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //Update the input and labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}
