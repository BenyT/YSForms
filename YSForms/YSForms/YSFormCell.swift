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
    
    private var separator: CALayer?
    
    
    // MARK: Init
    
    init(tag: String, title: String, value: AnyObject?) {
        
        self.tag = tag
        self.title = title
        self.value = value
        
        cell = UIView(x: 0, y: 0, w: YSFormWidth, h: 0)
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
}
