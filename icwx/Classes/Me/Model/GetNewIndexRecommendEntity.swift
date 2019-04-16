//
//  GetNewIndexRecommendEntity.swift
//  YYGZ
//
//  Created by sofmit on 2018/4/20.
//  Copyright © 2018年 sofmit. All rights reserved.
//

import UIKit
import ObjectMapper

class GetNewIndexRecommendEntity: BaseModel  {
    var pro_name:String?;
    var url:String?
    var min_price:Double?
    var id:String?
    var s_id:String?
    var m_tage:String?
    
    required init?(_ map: Map) {
        super.init(map: map);
    }
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        m_tage <- map["m_tage"]
        id <- map["id"];
        s_id <- map["s_id"];
        pro_name <- map["pro_name"];
        url <- map["url"];
        min_price <- map["min_price"];
    }
    
}

