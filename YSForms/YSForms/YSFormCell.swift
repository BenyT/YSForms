//
//  YSFormCell.swift
//  
//
//  Created by Cem Olcay on 25/06/15.
//
//

import UIKit

class YSFormCell: NSObject {
    
    // MARK: Propperties
    
    var cell: UIView!
    
    var tag: String!
    var title: String!      
    var value: AnyObject?
    
    var required: Bool = true
    var enabled: Bool = true
    
    var didDrawn: Bool = false
    
    private var separator: CALayer?
    private var validators: [YSFormValidator]?
    
    
    // MARK: Init
    
    init(tag: String, title: String, value: AnyObject?) {
        
        self.tag = tag
        self.title = title
        self.value = value
        
        cell = UIView(x: 0, y: 0, w: YSFormWidth, h: 0)
        cell.backgroundColor = UIColor.whiteColor()
    }
    
    
    // MARK: Height
    
    func rowHeight () -> CGFloat {
        return 55.0
    }
    
    
    // MARK: Separator
    
    func drawSeparator () {
    
        if separator != nil {
            return
        }
        
        separator = CALayer(
            x: 20,
            y: cell.h - 0.5,
            w: YSFormWidth - 20,
            h: 0.5,
            backgroundColor: UIColor.CardBorderColor())
        cell.layer.addSublayer(separator)
    }
    
    func removeSeparator () {
        
        if let sep = separator {
            sep.removeFromSuperlayer()
        }
        
        separator = nil
    }


    // MARK: Validation
    
    func addValidator (validator: YSFormValidator) {
        
        if validators == nil {
            validators = []
        }
        
        validators!.append(validator)
    }
    
    func isValid (success: (() -> Void)?, fail: ((String) -> Void)?) {
        
        var valid = true
        var failMessage = ""
        
        if let v = validators {

            var text = (value as? String) ?? ""
            
            for validator in v {
                validator.isValid(text,
                    success: nil,
                    fail: {
                        message in
                        failMessage = message
                        valid = false
                    })
            }
        }
        
        if valid {
            success? ()
        } else {
            fail? (failMessage)
        }
        
    }
}
