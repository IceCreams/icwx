//
//  GetNewIndexDriveplanEntity.swift
//  YYGZ
//
//  Created by sofmit on 2018/4/20.
//  Copyright © 2018年 sofmit. All rights reserved.
//

import UIKit
import ObjectMapper

class GetNewIndexDriveplanEntity: BaseModel  {
    
    var pub_time:String?;
    var link:String?
    var id:String?;
    var click_num:Int?
    var title:String?
    var image:String?
    var type:String?
    
    required init?(_ map: Map) {
        super.init(map: map);
    }
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        type <- map["type"];
        image <- map["image"];
        pub_time <- map["pub_time"];
        link <- map["link"];
        id <- map["id"];
        click_num <- map["click_num"];
        title <- map["title"];
    }
    
}

