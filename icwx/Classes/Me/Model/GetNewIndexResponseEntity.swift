//
//  GetIndexResponseEntity.swift
//  YYGZ
//
//  Created by sofmit on 2018/4/20.
//  Copyright © 2018年 sofmit. All rights reserved.
//

import UIKit
import ObjectMapper

class GetNewIndexResponseEntity: BaseModel  {
    var result:GetNewIndexResultEntity?;
    var status:Int?
    var msg:String?
    required init?(_ map: Map) {
        super.init(map: map);
    }
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        result <- map["result"];
        status <- map["status"];
        msg <- map["msg"];
    }
    
}

