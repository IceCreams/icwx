//
//  ICLoginViewController.swift
//  icwx
//
//  Created by Ice on 2019/4/8.
//  Copyright © 2019年 Ice. All rights reserved.
//

import UIKit

class ICLoginViewController: UIViewController {
    lazy var navBar:ICNavBar = {
        var bar = ICNavBar.InitWithTitle(title: "登录");
        
        
        return bar;
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.navBar);
        self.view.backgroundColor = UIColor.white;
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
