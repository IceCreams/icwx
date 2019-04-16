//
//  GetNewIndexJinYunShanXiEntity.swift
//  YSX
//
//  Created by iMac on 2019/1/9.
//  Copyright © 2019 sofmit. All rights reserved.
//

import UIKit
import ObjectMapper

class GetNewIndexJinYunShanXiEntity: BaseModel  {
    
    var titleicon:String?;
    var id_polinfo:String?
    var pub_time:String?;
    var title:String?;
    var type:String?
    
    required init?(_ map: Map) {
        super.init(map: map);
    }
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        type <- map["type"];
        titleicon <- map["titleicon"];
        id_polinfo <- map["id_polinfo"];
        pub_time <- map["pub_time"];
        title <- map["title"];
    }
    
}
