//
//  ViewController.swift
//  TipCalculator
//
//  Created by Faris Arafat on 12/31/19.
//  Copyright © 2019 D&F. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var totalwithTipFIeld: UILabel!
    @IBOutlet weak var tipField: UILabel!
    @IBOutlet weak var button20: UIButton!
    @IBOutlet weak var button15: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var billTextField: UITextField!
    
    var percentageOfTip = Float(0.0)
    var amountDue = Float(0.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculatetip(_ sender: UIButton) {
        let totalBill = Float(billTextField.text!) ?? 0
        
        if(button10.isSelected){
            percentageOfTip = Float(0.1)
        }
        else if(button15.isSelected){
            percentageOfTip = Float(0.15)
        }
        else{
            percentageOfTip = Float(0.20)
            print(percentageOfTip)
            
        }
        amountDue = totalBill * (1 + percentageOfTip)
        //print("Total Due: \(amountDue)")
        print(String(format: "Total Due: %.2f", amountDue))
    }
    
}

