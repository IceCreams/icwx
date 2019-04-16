//
//  GetNewIndexButtonsEntity.swift
//  YYGZ
//
//  Created by sofmit on 2018/4/20.
//  Copyright © 2018年 sofmit. All rights reserved.
//

import UIKit
import ObjectMapper

class GetNewIndexButtonsEntity: BaseModel  {
    var icon:String?;
    var title:String?
    var url:String?
    var id:String?
    var typeId:String?
    required init?(_ map: Map) {
        super.init(map: map);
    }
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        icon <- map["icon"];
        title <- map["title"];
        url <- map["url"];
        id <- map["id"];
        typeId <- map["type_id"];
    }
    
}

