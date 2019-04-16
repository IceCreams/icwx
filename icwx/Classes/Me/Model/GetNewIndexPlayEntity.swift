//
//  GetNewIndexPlayEntity.swift
//  YYGZ
//
//  Created by sofmit on 2018/4/20.
//  Copyright © 2018年 sofmit. All rights reserved.
//

import UIKit
import ObjectMapper

class GetNewIndexPlayEntity: BaseModel  {
    var polinfo_type:[GetNewIndexPolinfoTypeEntity]?;//资讯要问
    var strategy:[GetNewIndexStrategyEntity]?//旅游攻略
    var driveplan:[GetNewIndexDriveplanEntity]?//自驾游
    required init?(_ map: Map) {
        super.init(map: map);
    }
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        polinfo_type <- map["polinfo_type"];
        strategy <- map["strategy"];
        driveplan <- map["driveplan"];
    }
    
}

