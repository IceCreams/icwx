//
//  GetNewIndexTopimageEntity.swift
//  YYGZ
//
//  Created by sofmit on 2018/4/20.
//  Copyright © 2018年 sofmit. All rights reserved.
//

import UIKit
import ObjectMapper

class GetNewIndexTopimageEntity: BaseModel  {
    var image:String?;
    var title:String?
    var url:String?
    var link:String?
    var link_type:Int?
    var m_tage:String?
    var m_id:String?
    
    required init?(_ map: Map) {
        super.init(map: map);
    }
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        link <- map["link"];
        link_type <- map["link_type"];
        image <- map["image"];
        title <- map["title"];
        url <- map["url"];
        m_tage <- map["m_tage"];
        m_id <- map["m_id"];
    }
    
}

