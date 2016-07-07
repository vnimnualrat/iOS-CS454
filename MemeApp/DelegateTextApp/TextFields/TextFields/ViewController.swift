//
//  ViewController.swift
//  TextFields
//
//  Created by Varunya Nimnualrat on 7/1/16.
//  Copyright © 2016 Varunya Nimnualrat. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // Outlets
    @IBOutlet weak var zipCodeField: UITextField!
    @IBOutlet weak var dollarTextField: UITextField!
    @IBOutlet weak var lockableTextField: UITextField!
    @IBOutlet weak var enableSwitch: UISwitch!
    
    
    
    // Text Field Delegate Objects
    let zipCodeDelegate = ZipCodeFieldDelegate()
    let dollarDelegate = DollarSignFieldDelegate()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.zipCodeField.delegate = self.zipCodeDelegate
        self.dollarTextField.delegate = self.dollarDelegate
        self.lockableTextField.delegate = self
        self.enableSwitch.setOn(false, animated: false)
    }
    
    @IBAction func toggleEditor(sender:AnyObject){
        if(self.enableSwitch.on){
            self.lockableTextField.resignFirstResponder()
        }
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        return self.enableSwitch.on
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

