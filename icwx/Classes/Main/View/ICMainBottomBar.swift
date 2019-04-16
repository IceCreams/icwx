//
//  ICMainBottomBar.swift
//  icwx
//
//  Created by Ice on 2017/11/30.
//  Copyright © 2017年 Ice. All rights reserved.
//

import UIKit

class ICMainBottomBar: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    
    lazy var wxBtn:ICBarBtn = {
        let wxBtn = ICBarBtn()
        wxBtn.setTitle("微信", for: UIControlState.normal)
        wxBtn.setImage(#imageLiteral(resourceName: "tab-nav_shouyi--btn_n"), for: UIControlState.normal)
        wxBtn.setImage(#imageLiteral(resourceName: "tab-nav_shouyi--btn_s"), for: UIControlState.highlighted)
        wxBtn.setImage(#imageLiteral(resourceName: "tab-nav_shouyi--btn_s"), for: UIControlState.selected)
        wxBtn.isSelected = true;
        wxBtn.addTarget(self, action: #selector(self.seletBtn(btn:)), for: UIControlEvents.touchUpInside)
        
        
        return wxBtn
    }()
    lazy var addressBtn:ICBarBtn = {
        let addressBtn = ICBarBtn()
        addressBtn.titleEdgeInsets = UIEdgeInsetsMake(20,-58, 0, 0);
        addressBtn.setTitle("通讯录", for: UIControlState.normal)
        addressBtn.setImage(#imageLiteral(resourceName: "tab-nav_yanzheng-btn_n-"), for: UIControlState.normal)
        addressBtn.setImage(#imageLiteral(resourceName: "tab-nav_yanzheng-btn_s"), for: UIControlState.highlighted)
        addressBtn.setImage(#imageLiteral(resourceName: "tab-nav_yanzheng-btn_s"), for: UIControlState.selected)
        addressBtn.addTarget(self, action: #selector(self.seletBtn(btn:)), for: UIControlEvents.touchUpInside)
        return addressBtn
    }()
    lazy var findBtn:ICBarBtn = {
        let findBtn = ICBarBtn()
        findBtn.setTitle("发现", for: UIControlState.normal)
        findBtn.setImage(#imageLiteral(resourceName: "tab-nav_shouyi--btn_n"), for: UIControlState.normal)
        findBtn.setImage(#imageLiteral(resourceName: "tab-nav_shouyi--btn_s"), for: UIControlState.highlighted)
        findBtn.setImage(#imageLiteral(resourceName: "tab-nav_shouyi--btn_s"), for: UIControlState.selected)
        findBtn.addTarget(self, action: #selector(self.seletBtn(btn:)), for: UIControlEvents.touchUpInside)
        
        return findBtn
    }()
    lazy var meBtn:ICBarBtn = {
        let meBtn = ICBarBtn()
        meBtn.titleEdgeInsets = UIEdgeInsetsMake(20,-30, 0, 0);
        meBtn.setTitle("我", for: UIControlState.normal)
        meBtn.setImage(#imageLiteral(resourceName: "tab-nav_shouyi--btn_n"), for: UIControlState.normal)
        meBtn.setImage(#imageLiteral(resourceName: "tab-nav_shouyi--btn_s"), for: UIControlState.highlighted)
        meBtn.setImage(#imageLiteral(resourceName: "tab-nav_shouyi--btn_s"), for: UIControlState.selected)
        meBtn.addTarget(self, action: #selector(self.seletBtn(btn:)), for: UIControlEvents.touchUpInside)
        return meBtn
    }()
    lazy var topLin:UIView = {
        let topLin:UIView = UIView()
        topLin.backgroundColor = ICColor(r: 188, g: 188, b: 188)
        return topLin
    }()
    lazy var sBtn :ICBarBtn = wxBtn
    func mainBarinit() -> ICMainBottomBar {
        
//        let one:Method = class_getClassMethod(self, #selector(testOne))!
//        let tow:Method = class_getClassMethod(ICMainBottomBar(), #selector(testTow))!
//        method_exchangeImplementations(one, tow)
        
        
        self.addSubview(wxBtn)
        self.addSubview(addressBtn)
        self.addSubview(findBtn)
        self.addSubview(meBtn)
        self.addSubview(topLin)
        
        wxBtn.frame = CGRect(x: 0, y: 0, width: Common.ICW / 4, height: 50)
        addressBtn.frame = ICRect(x: wxBtn.frame.maxX, y: 0, width: Common.ICW / 4, height: 50)
        
        findBtn.frame = CGRect(x: addressBtn.frame.maxX, y: 0, width: Common.ICW / 4, height: 50)
        meBtn.frame = CGRect(x: findBtn.frame.maxX, y: 0, width: Common.ICW / 4, height: 50)
        topLin.frame = CGRect(x: 0, y: 0, width: Common.ICW , height: 0.5)
//        Common.ICColor(0,0,0)
        
        return self
    }
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    @objc private func seletBtn(btn:ICBarBtn) {
        sBtn.isSelected = false
        btn.isSelected = true
        sBtn = btn
        
        
    }
    func testOne()  {
        print("one")
    }
    func testTow()  {
        print("tow")
    }
}
