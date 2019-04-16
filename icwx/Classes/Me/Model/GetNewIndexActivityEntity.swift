//
//  GetNewIndexActivityEntity.swift
//  YYGZ
//
//  Created by sofmit on 2018/4/20.
//  Copyright © 2018年 sofmit. All rights reserved.
//

import UIKit
import ObjectMapper

class GetNewIndexActivityEntity: BaseModel  {
    
    var image:String?;
    var name:String?
    var activity_id:String?;
    var type:String?
    var url:String?;
    var create_time:String?

    required init?(_ map: Map) {
        super.init(map: map);
    }
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        image <- map["image"];
        name <- map["name"];
        activity_id <- map["id"];
        type <- map["type"];
        url <- map["url"];
        create_time <- map["create_time"]
    }
    
}

