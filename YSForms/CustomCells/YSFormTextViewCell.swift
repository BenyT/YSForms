//
//  YSFormTextViewCell.swift
//  
//
//  Created by Cem Olcay on 25/06/15.
//
//

import UIKit

class YSFormTextViewCell: YSFormCell, UITextViewDelegate {
    
    // MARK: Properties
    
    var textView: YSFormCellTextView!
    
    
    // MARK: Init
    
    override init(tag: String, title: String, value: AnyObject?) {
        super.init(tag: tag, title: title, value: value)
        
        textView = YSFormCellTextView(height: rowHeight(), title: title, value: value as? String)
        textView.delegate = self
        cell.addSubview(textView)
        cell.h = rowHeight()
    }
   
    
    // MARK: Height
    
    override func rowHeight() -> CGFloat {
        return 100.0
    }
    
    
    // MARK: UITextViewDelegate
    
    func textViewDidChange(textView: UITextView) {
        value = textView.text
    }
}
