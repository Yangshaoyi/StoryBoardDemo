//
//  LCTabBar.h
//  StoryBoardDemo
//
//  Created by 杨绍仪 on 2018/1/2.
//  Copyright © 2018年 yuanhang. All rights reserved.
//

#import <UIKit/UIKit.h>

//tab页面个数
typedef NS_ENUM(NSInteger, LCItemUIType) {
    LCItemUIType_Three = 3,//底部3个选项
    LCItemUIType_Five = 5,//底部5个选项
};


@class LCTabBar;

@protocol LCTabBarDelegate <NSObject>

-(void)tabBar:(LCTabBar *)tabBar clickCenterButton:(UIButton *)sender;

@end

@interface LCTabBar : UITabBar

@property (nonatomic, weak) id<LCTabBarDelegate> tabDelegate;
@property (nonatomic, strong) NSString *centerBtnTitle;
@property (nonatomic, strong) NSString *centerBtnIcon;

+(instancetype)instanceCustomTabBarWithType:(LCItemUIType)type;

@end
