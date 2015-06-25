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
        
        let cell = YSFormTextFieldCell(tag: "cell", title: "Adres", value: nil)
        cell.cell.y = 50
        cell.cell.backgroundColor = UIColor.Gray(250)
        view.addSubview(cell.cell)
        
        let textView = YSFormTextViewCell(tag: "view", title: "Aciklama", value: nil)
        textView.cell.y = cell.cell.bottomWithOffset(10)
        textView.cell.backgroundColor = UIColor.Gray(250)
        view.addSubview(textView.cell)
    }

}

