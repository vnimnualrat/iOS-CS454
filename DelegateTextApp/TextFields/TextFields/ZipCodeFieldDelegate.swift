//
//  ZipCodeFieldDelegate.swift
//  DelegatesChallengeApp
//
//  Created by Varunya Nimnualrat on 7/1/16.
//  Copyright © 2016 Varunya Nimnualrat. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeFieldDelegate: NSObject, UITextFieldDelegate{
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        let maxNumberLength = 5
        
        // Construct text that will be in field if change is accepted
        var text = textField.text! as NSString
        
        text = text.stringByReplacingCharactersInRange(range, withString: string)
        
        
        return text.length <= maxNumberLength
        

    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true;
    }
}