//
//  YSForm.swift
//  
//
//  Created by Cem Olcay on 25/06/15.
//
//

import UIKit

let YSFormWidth: CGFloat = UIScreen.ScreenWidth

protocol YSFormDelegate {
    func formDidSelectCell (cell: YSFormCell)
}

class YSForm {
    
    // MARK: Properties
    
    var form: UIView!
    var sections: [YSFormSection]!
    
    
    // MARK: Init
   
    init () {
        form = UIView(x: 0, y: 0, w: YSFormWidth, h: 0)
    }
    
    
    // MARK: Generate
    
    func addSectionAtIndex (section: YSFormSection, index: Int) {
        sections.insert(section, atIndex: index)
    }
    
    func addSection (section: YSFormSection) {
        sections.append(section)
    }
    
    func updateSectionAtIndex (index: Int) {
        
    }
    
    
    // MARK: Validate
    
    func validate () {
    
    }
    
}
