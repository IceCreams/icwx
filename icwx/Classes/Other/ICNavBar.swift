//
//  ICNavBar.swift
//  icwx
//
//  Created by Ice on 2019/4/8.
//  Copyright © 2019年 Ice. All rights reserved.
//

import UIKit
class ICNavBar: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    lazy var line:UIView = {
        var view = UIView();
        view = UIView();
        view.backgroundColor = UIColor.init(red: 214.0/255.0, green: 214.0/255.0, blue: 214.0/255.0, alpha: 1);
        view.frame = CGRect(x: 0, y: 90, width: Common.ICW, height: 0.5);
        return view;
    }()
    lazy var backBtn:UIButton = {
        var btn = UIButton();
        btn.setImage(UIImage.init(named: "banck_btn"), for: UIControlState.normal)
        btn.frame = CGRect(x: 10, y: 40, width: 50, height: 50);
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        return btn;
    }()
    lazy var title:UITextView = {
        var title = UITextView();
        title.textColor = UIColor.black;
        title.frame = CGRect(x: (Common.ICW - 100) / 2, y: 40, width: 100, height: 50)
        title.textAlignment = .center;
        title.font = UIFont.systemFont(ofSize: 20)
        return title;
    }()
    lazy var rightBtn:UIButton = {
        var btn = UIButton();
        btn.setTitleColor(UIColor.gray, for: UIControlState.normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        return btn;
    }()
    class func InitWithTitle(title:String) -> ICNavBar {
        let bar = ICNavBar();
        bar.addSubview(bar.backBtn)
        bar.addSubview(bar.title)
        bar.addSubview(bar.rightBtn)
        bar.addSubview(bar.line)
        bar.frame = CGRect(x: 0, y: 0, width: Common.ICW, height: 90)
        bar.title.text = title;
        return bar;
    }

}
