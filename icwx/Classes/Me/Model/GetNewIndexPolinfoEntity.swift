//
//  GetNewIndexPolinfoEntity.swift
//  YYGZ
//
//  Created by sofmit on 2018/4/20.
//  Copyright © 2018年 sofmit. All rights reserved.
//

import UIKit
import ObjectMapper

class GetNewIndexPolinfoEntity: BaseModel  {
    
    var id_polinfo:String?;
    var pub_time:String?
    var title:String?;
    var titleicon:String?;
    
    required init?(_ map: Map) {
        super.init(map: map);
    }
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        id_polinfo <- map["id_polinfo"];
        pub_time <- map["pub_time"];
        title <- map["title"];
        titleicon <- map["titleicon"]
    }
    
}

