//
//  BaseModel.swift
//  GZSK
//
//  Created by sofmit on 16/12/28.
//  Copyright © 2016年 sofmit. All rights reserved.
//

import UIKit
import ObjectMapper

class BaseModel: NSObject ,Mappable{
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {

    }
}

class PublicResultEntity: BaseModel {
    var url:String?
    var lvsessionid:String?
    
    required init?(_ map: Map) {
        super.init(map: map);
    }
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        url <- map["url"];
        lvsessionid <- map["lvsessionid"]
    }
}
