//
//  ViewController.swift
//  OTPFieldViewDemo
//
//  Created by shiyu on 2021/1/15.
//  Copyright © 2021 Vaibhav Bhasin. All rights reserved.
//

import UIKit
import OTPFieldView

class ViewController: UIViewController {

    @IBOutlet weak var otpTextFieldView: OTPFieldView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.otpTextFieldView.fieldsCount = 5
        self.otpTextFieldView.fieldBorderWidth = 2
        self.otpTextFieldView.defaultBorderColor = UIColor.black
        self.otpTextFieldView.filledBorderColor = UIColor.green
        self.otpTextFieldView.cursorColor = UIColor.red
        self.otpTextFieldView.displayType = .diamond
        self.otpTextFieldView.fieldSize = 40
        self.otpTextFieldView.separatorSpace = 8
        self.otpTextFieldView.shouldAllowIntermediateEditing = false
        self.otpTextFieldView.delegate = self
        self.otpTextFieldView.initializeUI()
    }
}

extension ViewController: OTPFieldViewDelegate {
    func shouldBecomeFirstResponderForOTP(otpTextFieldIndex index: Int) -> Bool {
        return true
    }
    
    func enteredOTP(otp: String) {
        
    }
    
    func hasEnteredAllOTP(hasEnteredAll: Bool) -> Bool {
        return true
    }
    
}
