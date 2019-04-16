//
//  GetNewIndexScenicEntity.swift
//  YSX
//
//  Created by iMac on 2018/12/14.
//  Copyright © 2018 sofmit. All rights reserved.
//

import UIKit
import ObjectMapper

class GetNewIndexScenicEntity: BaseModel  {
    
    var name:String?;
    var id:String?
    var url:String?;
    
    required init?(_ map: Map) {
        super.init(map: map);
    }
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        name <- map["name"];
        id <- map["id"];
        url <- map["url"];
    }
    
}

