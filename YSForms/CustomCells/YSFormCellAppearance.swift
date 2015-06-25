//
//  YSFormCellAppearance.swift
//  
//
//  Created by Cem Olcay on 25/06/15.
//
//

import UIKit

struct YSFormCellAppearance {
    
    var textColor: UIColor
    var textFont: UIFont
    
    var detailTextColor: UIColor
    var detailTextFont: UIFont
    
    var placeholderColor: UIColor
    var placeholderFont: UIFont
    
    var floatingPlaceholderColor: UIColor
    var floatingPlaceholderActiveColor: UIColor
    var floatingPlaceholderFont: UIFont

}

let YSFormCellAppearanceDefault = YSFormCellAppearance(
    
    textColor: UIColor.TitleColor(),
    textFont: UIFont.TitleFont(),
    
    detailTextColor: UIColor.TextColor(),
    detailTextFont: UIFont.TextFont(),
    
    placeholderColor: UIColor.TextColor(),
    placeholderFont: UIFont.TitleFont(),
    
    floatingPlaceholderColor: UIColor.TextColor(),
    floatingPlaceholderActiveColor: UIColor.TitleColor(),
    floatingPlaceholderFont: UIFont.AvenirNextRegular(11))