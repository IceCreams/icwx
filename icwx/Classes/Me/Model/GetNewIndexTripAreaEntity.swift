//
//  GetNewIndexTripAreaEntity.swift
//  YSX
//
//  Created by iMac on 2019/1/9.
//  Copyright © 2019 sofmit. All rights reserved.
//

import UIKit
import ObjectMapper

class GetNewIndexTripAreaEntity: BaseModel  {
    
    var image:String?;
    var id:String?
    var name:String?;
    var type:String?
    var tag_list:[GetNewIndexTag_listEntity]?
    
    required init?(_ map: Map) {
        super.init(map: map);
    }
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        type <- map["type"];
        image <- map["url"];
//        if Utils.convertNull(obj: image) == ""{
//            image <- map["image"];
//        }
        id <- map["id"];
        name <- map["name"];
        tag_list <- map["tag_list"];
    }
    
}

class GetNewIndexTag_listEntity: BaseModel  {
    
    var tag_name:String?;

    required init?(_ map: Map) {
        super.init(map: map);
    }
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        tag_name <- map["tag_name"];
  
    }
    
}

