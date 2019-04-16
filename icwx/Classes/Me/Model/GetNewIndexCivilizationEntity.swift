//
//  GetNewIndexCivilizationEntity.swift
//  YSX
//
//  Created by iMac on 2018/12/14.
//  Copyright © 2018 sofmit. All rights reserved.
//

import UIKit
import ObjectMapper

class GetNewIndexCivilizationEntity: BaseModel  {
    
    var image:String?;
    var id:String?
    var title:String?;
    
    required init?(_ map: Map) {
        super.init(map: map);
    }
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        image <- map["image"];
        id <- map["id"];
        title <- map["title"];
    }
    
}

