//
//  YSFormValidator.swift
//  
//
//  Created by Cem Olcay on 25/06/15.
//
//

import UIKit

protocol YSFormValidatable {

    var failMessage: String { get }
    func validate (text: String) -> Bool
}

class YSFormRegexValidator: YSFormValidatable {
    
    var regexRule = ""
    var failMessage = ""
    
    init (regexRule: String, failMessage: String) {
        self.regexRule = regexRule
        self.failMessage = failMessage
    }
    
    func validate (text: String) -> Bool {
        let test = NSPredicate(format: "SELF MATCHES %@", regexRule)
        return test.evaluateWithObject(text)
    }
}

class YSFormRequiredValidator: YSFormValidatable {
    
    var failMessage = ""
    
    init (failMessage: String) {
        self.failMessage = failMessage
    }
    
    func validate (text: String) -> Bool {
        return count(text) > 0
    }
}

enum YSFormValidator {

    case Email
    case Phone
    case Required (failMessage: String)
    
    func isValid (text: String, success: (() -> Void)?, fail: ((String) -> Void)?) {
        
        var validator: YSFormValidatable!
        
        switch self {
        
        case .Email:
            validator = YSFormRegexValidator(regexRule: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}", failMessage: "Email not valid")
            
        case .Phone:
            validator = YSFormRegexValidator(regexRule: "^\\d{10}$", failMessage: "Phone not valid")
            
        case .Required (let message):
            validator = YSFormRequiredValidator(failMessage: message)
        }
        
        if validator.validate(text) {
            success? ()
        } else {
            fail? (validator.failMessage)
        }
    }
    
}
