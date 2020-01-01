//
//  ViewController.swift
//  TipCalculator
//
//  Created by Faris Arafat on 12/31/19.
//  Copyright © 2019 D&F. All rights reserved.
//
//Ad ID: ca-app-pub-4376737116705267~8683346553
//Production UnitID: ca-app-pub-4376737116705267/6001342899
//Test Unit ID: ca-app-pub-3940256099942544/2934735716

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {
    
    @IBOutlet weak var totalwithTipFIeld: UILabel!
    @IBOutlet weak var tipField: UILabel!
    @IBOutlet weak var button20: UIButton!
    @IBOutlet weak var button15: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var bannerView: GADBannerView!
    
    
    var percentageOfTip = Float(0.0)
    var amountDue = Float(0.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
        bannerView.delegate = self
    }
    
    @IBAction func calculatetip(_ sender: UIButton) {
        let totalBill = Float(billTextField.text!) ?? 0
        
        if(sender.tag == 0){
            percentageOfTip = Float(0.1)
        }
        else if(sender.tag == 1){
            percentageOfTip = Float(0.15)
        }
        else{
            percentageOfTip = Float(0.20)
            print(percentageOfTip)
            
        }
        
        amountDue = totalBill * (1 + percentageOfTip)
        totalwithTipFIeld.isEnabled = true
        totalwithTipFIeld.text = String(format: "$ %.2f", amountDue)
        
        var tipamount = percentageOfTip*totalBill
        tipField.isEnabled = true
        tipField.text = String(format: "$ %.2f", tipamount)
        
        //print("Total Due: \(amountDue)")
        print(String(format: "Total Due: %.2f", amountDue))
        print(String(format: "Tip amount is %.2f", percentageOfTip*totalBill))
    }
    
}

extension ViewController: GADBannerViewDelegate{
    
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        print("Received Ad")
    }
    
    func adView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: GADRequestError) {
        print(error)
    }
}

