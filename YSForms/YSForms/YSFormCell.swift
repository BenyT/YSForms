//
//  YSFormCell.swift
//  
//
//  Created by Cem Olcay on 25/06/15.
//
//

import UIKit

class YSFormCell {
    
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
    
    func addValid (validator: YSFormValidator) {
        
        if validators == nil {
            validators = []
        }
        
        validators?.append(validator)
    }
    
    func isValid () -> Bool {
        
        if let v = validators {
            if let value = value as? String {
                return count(Set(v.map{ return $0.isValid(value).0 })) <= 1
            }
        }
        
        return true
    }
}
