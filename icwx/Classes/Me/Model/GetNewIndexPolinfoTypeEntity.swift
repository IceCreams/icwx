//
//  GetNewIndexPolinfoTypeEntity.swift
//  YYGZ
//
//  Created by sofmit on 2018/4/20.
//  Copyright © 2018年 sofmit. All rights reserved.
//

import UIKit
import ObjectMapper

class GetNewIndexPolinfoTypeEntity: BaseModel  {
    
    var proinfo:[GetNewIndexPolinfoEntity]?;
    var id:String?
    var type:String?;
    
    required init?(_ map: Map) {
        super.init(map: map);
    }
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        proinfo <- map["proinfo"];
        id <- map["id"];
        type <- map["type"];
    }
    
}


