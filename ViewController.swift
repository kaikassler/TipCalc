//
//  ViewController.swift
//  TipCalc
//
//  Created by Kai Yeh on 1/23/20.
//  Copyright © 2020 Kai Ye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var BillLabel: UITextField!
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func PopBack(_ sender: Any) {
        
        view.endEditing(true)
        
    }
    
    @IBAction func CalculateTip(_ sender: Any) {
        
        //get amount
        let bill = Double(BillLabel.text!) ?? 0
        
        //calcualate tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[TipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update tip and total labels
        TipLabel.text = String(format: "$%.2f", tip)
        TotalLabel.text = String(format: "$%.2f", total)
       
    }
}

