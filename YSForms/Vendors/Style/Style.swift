//
//  Style.swift
//  yemeksepeti
//
//  Created by Cem Olcay on 20/03/15.
//  Copyright (c) 2015 yemeksepeti. All rights reserved.
//

import UIKit


extension UIColor {
    
    class func NavBarColor () -> UIColor {
        return BarTintRGBColor(183, g: 28, b: 28)
    }
    
    class func BackgroundColor () -> UIColor {
        return RGBColor(237, g: 237, b: 237)
    }

    class func GreenColor () -> UIColor {
        return RGBColor(75, g: 174, b: 80)
    }
    
    class func ClearBasketColor () -> UIColor {
        return RGBColor(183, g: 28, b: 28)
    }
    
    class func YellowBasketColor () -> UIColor {
        return RGBColor(255, g: 184, b: 0)
    }

    class func JokerColor () -> UIColor {
        return UIColor.RGBColor(236, g: 40, b: 122)
    }
    
    
    class func CardHeaderColor () -> UIColor {
        return Gray(242)
    }
    
    class func CardCellColor () -> UIColor {
        return UIColor.whiteColor() //Gray(249)
    }
    
    class func CardBorderColor () -> UIColor {
        return Gray(200)
    }
    
    
    class func CheckoutBottomViewGreenColor () -> UIColor {
        return RGBColor (139, g: 195, b: 74)
    }
    
    class func CheckoutBottomViewRedColor () -> UIColor {
        return RGBColor (128, g: 17, b: 17)
    }
    
    class func RippleColor () -> UIColor {
        return Gray(51, alpha: 0.1)
    }
    
    class func ShadowColor () -> UIColor {
        return UIColor.blackColor()
    }
    
    class func TagLabelColor () -> UIColor {
        return UIColor.RGBAColor(71, g: 71, b: 71, a: 0.9)
    }
    
    
    class func TitleColor () -> UIColor {
        return Gray(51)
    }
    
    class func TextColor () -> UIColor {
        return Gray(144)
    }
        
    class func RedTitleColor () -> UIColor {
        return RGBColor(161, g: 24, b: 24)
    }
    
    class func PriceColor () -> UIColor {
        return RGBColor(255, g: 114, b: 8)
    }
    
    class func CouponColor () -> UIColor {
        return RGBColor(246, g: 85, b: 29)
    }
    
    
    class func DeleteColor () -> UIColor {
        return RGBColor (183, g: 28, b: 28)
    }
    
    
    class func LoginGreenColor () -> UIColor {
        return RGBColor(31, g: 145, b: 26)
    }
    
    class func FacebookColor () -> UIColor {
        return RGBColor(59, g: 89, b: 152)
    }

    class func TwitterColor () -> UIColor {
        return UIColor.RGBColor(85, g: 172, b: 238)
    }

    class func LineItemCountColor () -> UIColor {
        return UIColor.Gray(210)
    }
    
    
    class func RepeatOrderColor () -> UIColor {
        return UIColor.RGBColor(255, g: 114, b: 8)
    }
    
    class func CommentOrderColor () -> UIColor {
        return UIColor.RGBColor(255, g: 149, b: 0)
    }
    
    
    class func IncomingMessageBubbleColor () -> UIColor {
        return UIColor.Gray(220)
    }
    
    class func OutgoingMessageBubbleColor () -> UIColor {
        return UIColor.RGBColor(255, g: 149, b: 0)
    }
    
    
    class func joker30to20Color () -> UIColor {
        return UIColor.RGBColor (247, g: 135, b: 0)
    }
    
    class func joker40to25Color () -> UIColor {
        return UIColor.RGBColor (236, g: 40, b: 122)
    }
    
    class func joker70to45Color () -> UIColor {
        return UIColor.RGBColor (0, g: 146, b: 67)
    }
    
    class func joker120to75Color () -> UIColor {
        return UIColor.RGBColor (34, g: 119, b: 179)
    }
}

extension UIColor {
    
    class func colorForScore (score: Float) -> UIColor {
        
        if score >= 9.5 {
            return scoreColor10()
        } else if score < 9.5 && score >= 9.0 {
            return scoreColor95()
        } else if score < 9.0 && score >= 8.5 {
            return scoreColor90()
        } else if score < 8.5 && score >= 8.0 {
            return scoreColor85()
        } else if score < 8.0 && score >= 7.5 {
            return scoreColor80()
        } else if score < 7.5 && score >= 7.0 {
            return scoreColor75()
        } else if score < 7.0 && score >= 6.5 {
            return scoreColor70()
        } else if score < 6.5 && score >= 6.0 {
            return scoreColor65()
        } else if score < 6.0 && score >= 5.5 {
            return scoreColor60()
        } else if score < 5.5 && score >= 5.0 {
            return scoreColor55()
        } else if score < 5.0 && score > 4.5 {
            return scoreColor50()
        } else {
            return scoreColor45()
        }
        
    }
    
    class func scoreColor10 () -> UIColor {
        return UIColor.RGBColor(69, g: 197, b: 56)
    }
    
    class func scoreColor95 () -> UIColor {
        return UIColor.RGBColor(109, g: 197, b: 48)
    }
    
    class func scoreColor90 () -> UIColor {
        return UIColor.RGBColor(165, g: 197, b: 48)
    }
    
    class func scoreColor85 () -> UIColor {
        return UIColor.RGBColor(187, g: 199, b: 46)
    }
    
    class func scoreColor80 () -> UIColor {
        return UIColor.RGBColor(214, g: 208, b: 54)
    }
    
    class func scoreColor75 () -> UIColor {
        return UIColor.RGBColor(233, g: 201, b: 15)
    }
    
    class func scoreColor70 () -> UIColor {
        return UIColor.RGBColor(255, g: 186, b: 4)
    }
    
    class func scoreColor65 () -> UIColor {
        return UIColor.RGBColor(255, g: 160, b: 4)
    }
    
    class func scoreColor60 () -> UIColor {
        return UIColor.RGBColor(244, g: 111, b: 2)
    }
    
    class func scoreColor55 () -> UIColor {
        return UIColor.RGBColor(236, g: 97, b: 2)
    }
    
    class func scoreColor50 () -> UIColor {
        return UIColor.RGBColor(230, g: 81, b: 0)
    }
    
    class func scoreColor45 () -> UIColor {
        return UIColor.RGBColor(229, g: 65, b: 0)
    }
    
}

extension UIFont {
    
    class func TitleFont () -> UIFont {
        return AvenirNextDemiBold(15)
    }
    
    class func FooterTitleFont () -> UIFont {
        return AvenirNextDemiBold(14)
    }
    
    class func TextFont () -> UIFont {
        return AvenirNextRegular(13)
    }
    
    class func FooterTextFont () -> UIFont {
        return AvenirNextRegular(12)
    }
    
    class func MenuItemFont (size: CGFloat) -> UIFont {
        return AvenirNextMedium(size)
    }
    
    class func TagLabelFont () -> UIFont {
        return UIFont.AvenirNextMedium(13)
    }
    
    class func MediumFont () -> UIFont {
        return AvenirNextMedium(15)
    }
    
    class func RegularFont () -> UIFont {
        return AvenirNextRegular(15)
    }
    
    class func BoldFont () -> UIFont {
        return AvenirNextBold(15)
    }
    
    class func PriceFont () -> UIFont {
        return AvenirNextDemiBold(14)
    }
    
    class func StrikePriceFont () -> UIFont {
        return AvenirNextDemiBold(12)
    }

    class func JokerFont (size: CGFloat) -> UIFont {
        if let paytone = UIFont(name: "Paytone One", size: size) {
            return paytone
        } else {
            return UIFont.systemFontOfSize (size)
        }
    }
}

extension NSAttributedString {
    
    class func redtextAtt (text: String, bold: Bool) -> NSAttributedString {
        let font = bold ? UIFont.TitleFont() : UIFont.TextFont()
        return NSAttributedString (text: text, color: UIColor.RedTitleColor(), font: font, style: .plain)
    }
    
    class func redtitleAtt (text: String) -> NSAttributedString {
        let font = UIFont.AvenirNextMedium(13)
        return NSAttributedString (text: text, color: UIColor.RedTitleColor(), font: font, style: .plain)
    }
    
    
    class func textAtt (text: String, bold: Bool) -> NSAttributedString {
        let font = bold ? UIFont.TitleFont() : UIFont.TextFont()
        return NSAttributedString (text: text, color: UIColor.TitleColor(), font: font, style: .plain)
    }
    
    class func titleAtt (text: String) -> NSAttributedString {
        let font = UIFont.AvenirNextMedium(13)
        return NSAttributedString (text: text, color: UIColor.TextColor(), font: font, style: .plain)
    }
}

