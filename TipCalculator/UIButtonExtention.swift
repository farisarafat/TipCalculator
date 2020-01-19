//
//  UIButtonExtention.swift
//  TipCalculator
//
//  Created by Faris Arafat on 1/19/20.
//  Copyright © 2020 D&F. All rights reserved.
//

import Foundation
import UIKit

extension UIButton{
    
    func pulsate(){
        let pulse = CASpringAnimation(keyPath: "transofrm.scale")
        pulse.duration = 0.6
        pulse.fromValue = 0.95
        pulse.toValue = 1
        pulse.autoreverses = true
        pulse.initialVelocity = 0.5
        pulse.damping = 1
        
        layer.add(pulse, forKey: nil)
        
        
        
    }
    
    
    
}
