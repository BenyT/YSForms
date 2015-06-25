//
//  YSFormPickerCell.swift
//  
//
//  Created by Cem Olcay on 25/06/15.
//
//

import UIKit

typealias YSFormPickerCellAction = (cell: YSFormPickerCell) -> Void

class YSFormPickerCell: YSFormCell {
   
    var textView: YSFormCellTextView!
    
    override var value: AnyObject? {
        didSet {
            textView.text = (value as? String) ?? ""
        }
    }
    
    init(tag: String, title: String, value: AnyObject?, action: YSFormPickerCellAction) {
        super.init(tag: tag, title: title, value: value)
        
        let next = UIImageView(image: UIImage(named: "nextGray.png")!)
        next.right = cell.right - 20
        cell.addSubview(next)
        
        textView = YSFormCellTextView(width: cell.w - 60, height: rowHeight(), title: title, value: value as? String)
        textView.placeholderTextColor = YSFormCellAppearanceDefault.textColor
        textView.editable = false
        cell.addSubview(textView)
        cell.h = rowHeight()
        
        next.center.y = cell.h/2
        
        cell.addTapGestureWithOverlay({
            [unowned self] tap in
            action(cell: self)
        })
    }
    
}
