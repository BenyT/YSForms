//
//  YSFormCellTextView.swift
//  
//
//  Created by Cem Olcay on 25/06/15.
//
//

import UIKit

class YSFormCellTextView: JVFloatLabeledTextView {

    init (width: CGFloat? = nil, height: CGFloat, title: String, value: String?) {
        super.init(frame: CGRect(x: 20, y: 0, width: width ?? YSFormWidth - 40, height: height), textContainer: nil)
        commonInit()
        
        // content
        
        placeholder = title
    
        if let v = value {
            text = v
        }
        
        // style
        
        backgroundColor = UIColor.clearColor()
        
        textColor = YSFormCellAppearanceDefault.textColor
        font = YSFormCellAppearanceDefault.textFont
        
        placeholderTextColor = YSFormCellAppearanceDefault.placeholderColor
        placeholderLabel?.font = YSFormCellAppearanceDefault.placeholderFont

        placeholderYPadding = -3
        floatingLabelYPadding = 5
        
        floatingLabelTextColor = YSFormCellAppearanceDefault.floatingPlaceholderColor
        floatingLabelActiveTextColor = YSFormCellAppearanceDefault.floatingPlaceholderActiveColor
        floatingLabelFont = YSFormCellAppearanceDefault.floatingPlaceholderFont
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
