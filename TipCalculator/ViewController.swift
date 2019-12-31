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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculatetip(_ sender: Any) {
        if billTextField != nil{
            if button10.isSelected{
                var total = Float(billTextField.text) * 10
            }
        }
    }
    
}

