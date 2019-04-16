//
//  GetNewIndexRouteEntity.swift
//  YSX
//
//  Created by iMac on 2018/12/14.
//  Copyright © 2018 sofmit. All rights reserved.
//

import UIKit
import ObjectMapper

class GetNewIndexRouteEntity: BaseModel  {
    
    var image:String?//": "http://10.10.1.243:9001/shangxi//2018/12/11/history/4ba6bce7d4d44bbf930461fc5fd5caab.jpg",//图片url
    var distance:String?//": "1",//路程
    var recommend:Int?//": 1,//推荐指数
    var id:String?//": "8a8a816a679c4b4e01679c89a8620000",//id
    var time:String?//": "1",//游玩时长
    var title:String?//": "太行"//标题

    
    required init?(_ map: Map) {
        super.init(map: map);
    }
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        image <- map["image"];
        distance <- map["distance"];
        recommend <- map["recommend"];
        id <- map["id"];
        time <- map["time"];
        title <- map["title"];
    }
    
}

