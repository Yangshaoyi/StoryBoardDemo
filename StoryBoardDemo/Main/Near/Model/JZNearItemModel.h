//
//  JZNearItemModel.h
//  StoryBoardDemo
//
//  Created by 杨绍仪 on 2018/1/4.
//  Copyright © 2018年 yuanhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JZNearItemModel : NSObject

@property (nonatomic, strong) NSArray *poi_list;

@end

@interface JZPoiListModel : NSObject

@property (nonatomic, strong) NSString *poi_name;
@property (nonatomic, strong) NSString *poi_id;
@property (nonatomic, strong) NSString *poi_distance;
@property (nonatomic, strong) NSString *bizarea_title;
@property (nonatomic, strong) NSArray *tuan_list;

@property (nonatomic, strong) NSDictionary *ugc;
@property (nonatomic, strong) NSArray *special_label;
@property (nonatomic, strong) NSString *poi_image;

@end


@interface JZNearTuanListModel : NSObject

@property (nonatomic, strong) NSString *deal_id;
@property (nonatomic, strong) NSString *image;
@property (nonatomic, strong) NSString *brand_name;
@property (nonatomic, strong) NSString *short_title;
@property (nonatomic, strong) NSNumber *groupon_price;

@property (nonatomic, strong) NSNumber *market_price;
@property (nonatomic, strong) NSString *other_desc;
@property (nonatomic, strong) NSDictionary *favour_list;

@end
