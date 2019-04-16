//
//  ICRootModel.swift
//  icwx
//
//  Created by Ice on 2019/4/2.
//  Copyright © 2019年 Ice. All rights reserved.
//

import UIKit
import ObjectMapper

class ICRootModel: Mappable {
    var result:GetNewIndexResultEntity?;
    var status:Int?
    var msg:String?
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        result <- map["result"];
        status <- map["status"];
        msg <- map["msg"];
    }
    

}
