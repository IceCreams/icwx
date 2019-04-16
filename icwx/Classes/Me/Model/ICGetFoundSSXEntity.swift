//
//  ICGetFoundSSXEntity.swift
//  YSX
//
//  Created by Ice on 2019/2/26.
//  Copyright © 2019年 sofmit. All rights reserved.
//

import UIKit
import ObjectMapper
class ICGetFoundSSXEntity: BaseModel {
    var imgUrl:String?;
    var url:String?
    override func mapping(map: Map) {
        imgUrl <- map["imgUrl"];
        url <- map["url"];
    }
}
