//
//  GetNewIndexHotcityEntity.swift
//  YYGZ
//
//  Created by sofmit on 2018/4/20.
//  Copyright © 2018年 sofmit. All rights reserved.
//

import UIKit
import ObjectMapper

class GetNewIndexHotcityEntity: BaseModel  {
    
    var image:String?;
    var id:String?
    var name:String?;
    var scenic_count:Int?//景点个数
    
    required init?(_ map: Map) {
        super.init(map: map);
    }
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        image <- map["image"];
        id <- map["id"];
        name <- map["name"];
        scenic_count <- map["scenic_count"];
    }
    
}

