//
//  YSFormTextFieldCell.swift
//  
//
//  Created by Cem Olcay on 25/06/15.
//
//

import UIKit

class YSFormTextFieldCell: YSFormCell {

    // MARK: Properties

    var textField: YSFormCellTextField!
    
    
    // MARK: Init
    
    override init(tag: String, title: String, value: AnyObject?) {
        super.init(tag: tag, title: title, value: value)
        
        textField = YSFormCellTextField(height: rowHeight(), title: title, value: value as? String)
        cell.addSubview(textField)
        cell.h = rowHeight()
    }
}
