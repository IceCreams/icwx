//
//  ICWX.swift
//  icwx
//
//  Created by Ice on 2017/11/30.
//  Copyright © 2017年 Ice. All rights reserved.
//

import UIKit

class ICWX: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    let name: String
    // 自定义的构造器
    init(_ frame: CGRect? = nil) {
        name = "Paul"
        
        if let frame = frame {
            super.init(frame: frame)
        } else {
            super.init()
        }
    
    }
    required convenience override init(frame: CGRect) {
        self.init(frame)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
    }

}
