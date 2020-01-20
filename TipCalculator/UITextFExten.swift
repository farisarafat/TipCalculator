//
//  UITextFExten.swift
//  TipCalculator
//
//  Created by Faris Arafat on 1/20/20.
//  Copyright © 2020 D&F. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
func addDoneCancelToolbar(onDone: (target: Any, action: Selector)? = nil, onCancel: (target: Any, action: Selector)? = nil) {
    let onCancel = onCancel ?? (target: self, action: #selector(cancelButtonTapped))
    let onDone = onDone ?? (target: self, action: #selector(doneButtonTapped))

    let toolbar: UIToolbar = UIToolbar()
    toolbar.barStyle = .default
    toolbar.items = [
        UIBarButtonItem(title: "Cancel", style: .plain, target: onCancel.target, action: onCancel.action),
        UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil),
        UIBarButtonItem(title: "Done", style: .done, target: onDone.target, action: onDone.action)
    ]
    toolbar.sizeToFit()

    self.inputAccessoryView = toolbar
}

// Default actions:
@objc func doneButtonTapped() { self.resignFirstResponder() }
@objc func cancelButtonTapped() { self.resignFirstResponder() }
    
}
