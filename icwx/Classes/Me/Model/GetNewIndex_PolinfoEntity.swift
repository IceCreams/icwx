//
//  GetNewIndex_PolinfoEntity.swift
//  YSX
//
//  Created by iMac on 2019/1/9.
//  Copyright © 2019 sofmit. All rights reserved.
//

import UIKit
import ObjectMapper

class GetNewIndex_PolinfoEntity: BaseModel  {
    
    var jinyunshanxi:[GetNewIndexJinYunShanXiEntity]?;
    
    required init?(_ map: Map) {
        super.init(map: map);
    }
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        jinyunshanxi <- map["jinyunshanxi"];
    }
    
}

