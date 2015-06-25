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
        
        // first section
        
        let firstSection = YSFormSection(tag: "sec 1", title: "Required")
        firstSection.addCell(YSFormTextFieldCell(tag: "first", title: "First Name", value: "cem"))
        firstSection.addCell(YSFormTextFieldCell(tag: "last", title: "Last Name", value: "Olcay"))
        firstSection.addCell(YSFormTextFieldCell(tag: "address", title: "Address", value: nil))
        
        
        // second section
        
        let secondSection = YSFormSection(tag: "sec 2", title: "Information")
        secondSection.addCell(YSFormTextFieldCell(tag: "city", title: "City", value: nil))
        secondSection.addCell(YSFormTextViewCell(tag: "notes", title: "Notes", value: "Istanbul"))
        secondSection.addCell(YSFormTextViewCell(tag: "add", title: "Additional", value: nil))
        
        
        // third section
        
        let mailCell = YSFormTextFieldCell(tag: "mail", title: "Email", value: nil)
        mailCell.addValidator(YSFormValidator.Email)
        mailCell.addValidator(YSFormValidator.Required(failMessage: "Lutfen Mail Adresinizi giriniz"))
        
        let phoneCell = YSFormTextFieldCell(tag: "phone", title: "Phone", value: nil)
        phoneCell.addValidator(YSFormValidator.Phone)
        phoneCell.addValidator(YSFormValidator.Required(failMessage: "Lutfen telefon numaranizi giriniz"))
        
        let pickerCell = YSFormPickerCell(tag: "picker", title: "Pick something nice", value: nil, action: {
            cell in
            cell.value = "picked"
        })
        
        let pickedCell = YSFormPickerCell(tag: "picked", title: "Picker", value: "Already picked something here and some meani words for demo", action: {
            cell in
            cell.value = "hey"
        })
        

        let thirdSection = YSFormSection(tag: "sec 3", title: "Validation")
        thirdSection.addCell(mailCell)
        thirdSection.addCell(phoneCell)
        thirdSection.addCell(pickerCell)
        thirdSection.addCell(pickedCell)
        
        
        // forth section
        
        let forthSection = YSFormSection(tag: "forthSecton", title: nil)
        forthSection.addCell(YSFormSwitchCell(tag: "switch", title: "So what do you think about it, isnt it nice ?", value: true))

        
        // form
        
        let form = YSForm()
        form.addSection(firstSection)
        form.addSection(secondSection)
        form.addSection(thirdSection)
        form.addSection(forthSection)
        
        
        // scroll
        
        let scroll = TPKeyboardAvoidingScrollView(frame: view.frame)
        view.addSubview(scroll)
        
        scroll.addSubview(form.form)
        form.form.y = 30
        
        
        // validate button
        
        let but = BlockButton(x: 20, y: form.form.bottomWithOffset(10), w: scroll.w - 40, h: 60)
        but.setTitle("validate", forState: .Normal)
        but.backgroundColor = UIColor.GreenColor()
        but.actionBlock = {
            sender in
            form.validate({
                println ("form is valid")
                println (form.getValues())
            },
            fail: {
                message in
                println ("form not valid")
                println (message)
            })
        }
        
        scroll.addSubview(but)
        scroll.contentHeight = but.bottomWithOffset(10)
        
    }

}

