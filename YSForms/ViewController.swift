//
//  ViewController.swift
//  YSForms
//
//  Created by Cem Olcay on 25/06/15.
//  Copyright (c) 2015 Cem Olcay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.BackgroundColor()
        
        let form = YSForm()
        
        let firstSection = YSFormSection(tag: "sec 1", title: "Required")
        firstSection.addCell(YSFormTextFieldCell(tag: "first", title: "First Name", value: nil))
        firstSection.addCell(YSFormTextFieldCell(tag: "last", title: "Last Name", value: nil))
        firstSection.addCell(YSFormTextFieldCell(tag: "address", title: "Address", value: nil))
        
        let secondSection = YSFormSection(tag: "sec 2", title: "Information")
        secondSection.addCell(YSFormTextFieldCell(tag: "city", title: "City", value: nil))
        secondSection.addCell(YSFormTextViewCell(tag: "notes", title: "Notes", value: nil))
        secondSection.addCell(YSFormTextViewCell(tag: "add", title: "Additional", value: nil))
        
        form.addSection(firstSection)
        form.addSection(secondSection)
        
        let scroll = TPKeyboardAvoidingScrollView(frame: view.frame)
        view.addSubview(scroll)
        
        scroll.addSubview(form.form)
        form.form.y = 30
        scroll.contentHeight = form.form.bottomWithOffset(10)
    
    }

}

