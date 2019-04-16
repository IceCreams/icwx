///
//  ICMainTopBar.swift
//  icwx
//
//  Created by Ice on 2017/12/6.
//  Copyright © 2017年 Ice. All rights reserved.
//

import UIKit

class ICMainTopBar: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    lazy var addBtn:UIButton = {
        let addBtn = ICBarBtn()
//        addBtn.setTitle("通讯录", for: UIControlState.normal)
        addBtn.setImage(#imageLiteral(resourceName: "tab-nav_shouyi--btn_s"), for: UIControlState.normal)
        addBtn.addTarget(self, action: #selector(self.addBtnTap), for: UIControlEvents.touchUpInside)
//        addBtn.addTarget(self, action: #selector(self.addBtnTap()), for: UIControlEvents.touchUpInside)
//        addressBtn.addTarget(self, action: #selector(self.seletBtn(btn:)), for: UIControlEvents.touchUpInside)
        return addBtn
    }()
    lazy var title:UILabel = {
        let title = UILabel()
        title.text = "微信d的发送到   sadfasdf a发"
        title.font = UIFont.init(name: "", size: 14)
        title.textColor = UIColor.white
        title.backgroundColor = UIColor.red
        
        print(getTextWidth(textStr: title.text!, font: title.font, height: 60))
        return title
    }()
    @objc private func addBtnTap(){
        
    }
    
    let name: String
    // 自定义的构造器
    init(_ frame: CGRect? = nil) {
        name = "Paul"
        if let frame = frame {
            super.init(frame: frame)
        } else {
            super.init()
        }
        
        self.backgroundColor = UIColor.black
        self.addSubview(addBtn)
        self.addSubview(title)
        
        self.addBtn.frame = ICRect(x: Common.ICW - 60, y: 20, width: 30, height: 30)
        self.title.frame = ICRect(x: 0, y: 0, width: getTextWidth(textStr: title.text!, font: title.font, height: 60), height: 60)
    }
    required convenience override init(frame: CGRect) {
        self.init(frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
