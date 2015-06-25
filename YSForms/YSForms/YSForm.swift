//
//  YSForm.swift
//  
//
//  Created by Cem Olcay on 25/06/15.
//
//

import UIKit

let YSFormWidth: CGFloat = UIScreen.ScreenWidth

class YSForm {
    
    // MARK: Properties
    
    var form: UIView!
    let sectionPadding: CGFloat = 20
    
    var sections: [YSFormSection] = [] {
        didSet {
            self.draw()
        }
    }
    
    
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
    
    
    // MARK: Draw
    
    func draw () {
        
        // reset
        
        if form != nil {
            form = nil
        }
        
        form = UIView (x: 0, y: 0, w: YSFormWidth, h: 0)
        
        var height: CGFloat = 0
        
        
        // draw
        
        for section in sections {
            section.section.y = height
            form.addSubview(section.section)
            height = section.section.bottomWithOffset(sectionPadding)
        }
        
        form.h = height
    }
    
    
    // MARK: Validate
    
    func validate (success: () -> Void, fail: (String) -> Void) {
        
        var valid = true
        var msg = ""
        
        for s in sections {
            for c in s.cells {
                c.isValid(nil, fail: { message in valid = false; msg = message })
            }
        }
        
        if valid {
            success()
        } else {
            fail(msg)
        }
    }
    
    
    // MARK: Values
    
    func getValues () -> [String: AnyObject?] {
        
        var values: [String: AnyObject?] = [:]
        
        for s in sections {
            for c in s.cells {
                values[c.tag] = c.value
            }
        }
        
        return values
    }
    
}
