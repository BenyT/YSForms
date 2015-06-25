//
//  YSFormSwitchCell.swift
//  
//
//  Created by Cem Olcay on 25/06/15.
//
//

import UIKit

class YSFormSwitchCell: YSFormCell {
    
    var toggle: UISwitch!
    
    override init(tag: String, title: String, value: AnyObject?) {
        super.init(tag: tag, title: title, value: value)
        
        toggle = UISwitch()
        toggle.on = (value as? Bool) ?? false
        self.value = toggle.on
        toggle.sizeToFit()
        toggle.right = cell.w - 20
        toggle.addTarget(self, action: "switchValueChanged:", forControlEvents: .ValueChanged)
        cell.addSubview(toggle)
        
        let w = cell.w - toggle.w - 40
        let x: CGFloat = 20
        
        let label = UILabel(
            x: x,
            y: 10,
            width: w,
            text: title,
            textColor: YSFormCellAppearanceDefault.textColor,
            textAlignment: NSTextAlignment.Left,
            font: YSFormCellAppearanceDefault.textFont)
        cell.addSubview(label)
        
        cell.h = max(label.bottomWithOffset(10), toggle.h + 20)
        toggle.center.y = cell.h/2
    }
    
    override func rowHeight() -> CGFloat {
        return cell.h
    }
    
    func switchValueChanged (sender: UISwitch) {
        value = sender.on
    }
   
}
