//
//  DollarSignFieldDelegate.swift
//  TextFields
//
//  Created by Varunya Nimnualrat on 7/1/16.
//  Copyright © 2016 Varunya Nimnualrat. All rights reserved.
//

import Foundation
import UIKit

class DollarSignFieldDelegate: NSObject, UITextFieldDelegate{
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        let text = textField.text! as NSString
        var newText = text.stringByReplacingCharactersInRange(range, withString: string)
        var newStringText = String(newText)
        
        // Returns all Decimal Digit Characters
        let numbers = NSCharacterSet.decimalDigitCharacterSet()
        var numberText = ""
        for i in newStringText.unicodeScalars{
            // Long character is member of receiver
            if numbers.longCharacterIsMember(i.value){
                // Appends the number that is being entered. Ex: 1, 12, 123
                numberText.append(i)
                //print(numberText)
            }
        }

        
        let dollarString = Int(numberText)! / 100
        let centsFromString = Int(numberText)! % 100
        var cents = String(centsFromString)
        if(centsFromString < 10){
            cents = "0" + cents
        }
        
        newText = "$" + String(dollarString) + "." + cents
        
        textField.text = newText
        
        return false
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
}
