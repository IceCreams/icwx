//
//  Common.swift
//  icwx
//
//  Created by Ice on 2017/11/30.
//  Copyright © 2017年 Ice. All rights reserved.
//

import UIKit

struct Common {
    static let ICW = UIScreen.main.applicationFrame.maxX
    static let ICH = UIScreen.main.applicationFrame.maxY
    
}
var isFullScreen: Bool {
    if #available(iOS 11, *) {
        guard let w = UIApplication.shared.delegate?.window, let unwrapedWindow = w else {
            return false
        }
        
        if unwrapedWindow.safeAreaInsets.left > 0 || unwrapedWindow.safeAreaInsets.bottom > 0 {
            print(unwrapedWindow.safeAreaInsets)
            return true
        }
    }
    return false
}
func ICColor(r:CGFloat, g:CGFloat, b:CGFloat) -> UIColor {
    return UIColor.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1.0)
}
func ICRect(x:CGFloat, y:CGFloat, width:CGFloat, height:CGFloat) -> CGRect {
    return CGRect(x:x, y:y, width:width, height:height)
}
func getTextHeigh(textStr:String,font:UIFont,width:CGFloat) -> CGFloat {
    
    let normalText: NSString = textStr as NSString
    let size = CGSize.init(width: width, height: 1000)
    
    let dic = NSDictionary(object: font, forKey: NSAttributedStringKey.font as NSCopying)
    let stringSize = normalText.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: dic as? Dictionary, context: nil)
    return stringSize.height
}

func getTextWidth(textStr:String,font:UIFont,height:CGFloat) -> CGFloat {
    
    let normalText: NSString = textStr as NSString
    
    let size = CGSize.init(width: 1000, height: height)
    
    let dic = NSDictionary(object: font, forKey: NSAttributedStringKey.font as NSCopying)
    
//    let stringSize = normalText.boundingRectWithSize(size, options: .UsesLineFragmentOrigin, attributes: dic as? [String : AnyObject], context:nil).size
    let stringSize = normalText.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: dic as? [NSAttributedStringKey : Any], context: nil)
    
    return stringSize.width
    
}

