//
//  ICHomeResultModel.swift
//  icwx
//
//  Created by Ice on 2019/4/3.
//  Copyright © 2019年 Ice. All rights reserved.
//

import UIKit
import ObjectMapper
class ICHomeResultModel: Mappable {
    required init?(map: Map) {
        
    }
    
    var play:GetNewIndexPlayEntity?;//当地玩乐
    var topimage:[GetNewIndexTopimageEntity]?//顶部轮播
    var buttons:[GetNewIndexButtonsEntity]?//菜单
    var perceptionButtons:[GetNewIndexButtonsEntity]?//感知山西
    var moveButtons:[GetNewIndexButtonsEntity]?//菜单行走山西
    var AftertastButtons:[GetNewIndexButtonsEntity]?//菜单回味山西
    
    var activity:[GetNewIndexActivityEntity]?//最新活动
    var recommend:[GetNewIndexRecommendEntity]?//特色美食
    var hotcity:[GetNewIndexHotcityEntity]?//热门城市
    
    var civilization:[GetNewIndexCivilizationEntity]?//文化
    var history:[GetNewIndexHistoryEntity]?//历史
    var scenic:[GetNewIndexScenicEntity]?//热门景区
    var route:[GetNewIndexRouteEntity]?//线路
    
    var drivePlan:[GetNewIndexDriveplanEntity]?//精选线路
    var tripArea:[GetNewIndexTripAreaEntity]?//热门推荐
    var polinfo:[GetNewIndexJinYunShanXiEntity]?//资讯   晋韵山西
    var strategy:[GetNewIndexStrategyEntity]?//图说山西
    
    var TravleMapImage:[TravleMapImageListEntity]?//行走山西
    var strategy_url:String?//首页回味山西展示链接
    var strategy_url_more:String?//首页回味山西更多链接
    var activity_new:[IndexActivityEntity]?//活动
    var video:[VideoListEntity]?//视屏
    
  
    func mapping(map: Map) {
        
        strategy_url <- map["strategy_url"];
        strategy_url_more <- map["strategy_url_more"];
        
        activity_new <- map["activity"];
        video <- map["video"];
        TravleMapImage <- map["TravleMapImage"];
        
        play <- map["play"];
        topimage <- map["topimage"];
        buttons <- map["buttons"];
        activity <- map["activity"];
        recommend <- map["recommend"];
        hotcity <- map["hotcity"];
        
        civilization <- map["civilization"];
        history <- map["history"];
        scenic <- map["scenic"];
        route <- map["route"];
        
        drivePlan <- map["drivePlan"];
        tripArea <- map["tripArea"];
        polinfo <- map["polinfo"];
        strategy <- map["strategy"];
    }
    

}
class TravleMapImageListEntity:BaseModel {
    var image:String?
    var id:String?
    var url:String?
    required init?(_ map: Map) {
        super.init(map: map);
    }
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        image <- map["image"];
        id <- map["id"];
        image <- map["imgUrl"];
        url <- map["url"];
        
        
    }
}
class VideoListEntity:BaseModel{
    var video_url:String?
    var img_url:String?
    var title:String?
    var id:String?
    
    required init?(_ map: Map) {
        super.init(map: map);
    }
    
    required init?(map: Map) {
        super.init(map: map);
    }
    override func mapping(map: Map) {
        video_url <- map["video_url"];
        img_url <- map["img_url"];
        title <- map["title"];
        id <- map["id"];
    }
}
