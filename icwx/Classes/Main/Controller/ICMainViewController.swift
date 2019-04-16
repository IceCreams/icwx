//
//  ICMainViewController.swift
//  icwx
//
//  Created by Ice on 2017/11/29.
//  Copyright © 2017年 Ice. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

class ICMainViewController: UIViewController {
    
    lazy var tableView:ICUserTableView = {
        var table = ICUserTableView()
//        table.dataSource = UITableViewDataSourc
        return table
    }()
    var showView:UIView = UIView()
    lazy var wx:ICWX = {
        let wx = ICWX()
//        wx.backgroundColor = UIColor.blue
        return wx
        // Do any additional setup after loading the view.
    }()
    lazy var address:ICAddressBook = {
        let address = ICAddressBook()
//        address.backgroundColor = UIColor.black
        address.isHidden = true;
        return address
        // Do any additional setup after loading the view.
    }()
    lazy var find:ICFind = {
        let find = ICFind()
//        find.backgroundColor = UIColor.yellow
        find.isHidden = true;
        return find
        // Do any additional setup after loading the view.
    }()
    lazy var me:ICMe = {
        let me = ICMe()
//        me.backgroundColor = UIColor.white
        me.isHidden = true;
        return me
        // Do any additional setup after loading the view.
    }()
    lazy var mBar:ICMainBottomBar = {
        let mBar = ICMainBottomBar().mainBarinit()
        mBar.wxBtn.addTarget(self, action: #selector(wxSelect), for: UIControlEvents.touchUpInside)
        mBar.addressBtn.addTarget(self, action: #selector(addressSelect), for: UIControlEvents.touchUpInside)
        mBar.findBtn.addTarget(self, action: #selector(findSelect), for: UIControlEvents.touchUpInside)
        mBar.meBtn.addTarget(self, action: #selector(meSelect), for: UIControlEvents.touchUpInside)
        mBar.backgroundColor = UIColor.white
        return mBar
        // Do any additional setup after loading the view.
    }()
    lazy var topBar:ICMainTopBar = {
        let topBar = ICMainTopBar()
        //        me.backgroundColor = UIColor.white
        
        return topBar
        // Do any additional setup after loading the view.
    }()
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //        self.view.backgroundColor = UIColor.red
        // Do any additional setup after loading the view.
        self.view.addSubview(wx);
        self.view.addSubview(address);
        self.view.addSubview(find);
        self.view.addSubview(me);
        self.view.addSubview(mBar);
        self.view.addSubview(topBar);
        wx.frame = CGRect(x: 0,y: 0,width: Common.ICW, height: Common.ICH )
        address.frame = CGRect(x: 0,y: 0,width: Common.ICW, height: Common.ICH )
        find.frame = CGRect(x: 0,y: 0,width: Common.ICW, height: Common.ICH )
        me.frame = CGRect(x: 0,y: 0,width: Common.ICW, height: Common.ICH )
        mBar.frame = CGRect(x: 0,y: Common.ICH - 50,width: Common.ICW, height: 50 )
        topBar.frame = CGRect(x: 0,y: 0,width: Common.ICW, height: 60 )
        self.getUserInfo();
        self.testRunTime();
        var login = ICLoginViewController();
        self.present(login, animated: true) {
            
        };
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    //点击微信
    @objc func wxSelect (){
        wx.isHidden = false
        showView.isHidden = true
        showView = wx
    }
    //点击通讯录
    @objc func addressSelect (){
        address.isHidden = false
        showView.isHidden = true
        showView = address
    }
    //点击发现
    @objc func findSelect (){
        find.isHidden = false
        showView.isHidden = true
        showView = find
    }
    //点击我
    @objc func meSelect (){
        me.isHidden = false
        showView.isHidden = true
        showView = me
    }
    
    func getUserInfo(){
//        Alamofire.request("http://183.201.254.66:7000/Interface/api/getIndex", method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { (response) in
//            let res:ICRootModel = Mapper<ICRootModel>().map(JSONObject: response.result)!
//            print(res)
////            var res:ICRootModel = Mapper().m
//        }
//        Alamofire.request("").requestob
        Alamofire.request("http://183.201.254.66:7000/Interface/api/getIndex").responseObject { (response: DataResponse<ICRootModel>) in
            let weatherResponse = response.result.value
//            weatherResponse?.result
            print(weatherResponse?.result)
            
        }
    }
    //测试runtime
    let testStringOne  = "testStringOne"
    let testStringTwo  = "testStringTwo"
    let testStringThr  = "testStringThr"
    var count:UInt32 = 0
    func testRunTime() {
        let  SwiftClass = TestASwiftClass()
        let  proList = class_copyPropertyList(object_getClass(self),&count)
        for  i in 0..<numericCast(count) {
            
            let property = property_getName((proList?[i])!);
            print("属性成员属性:%@",String.init(utf8String: property) ?? "没有找到你要的属性");
        }
    }
    
}
