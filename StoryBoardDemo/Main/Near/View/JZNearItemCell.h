//
//  JZNearItemCell.h
//  StoryBoardDemo
//
//  Created by 杨绍仪 on 2018/1/4.
//  Copyright © 2018年 yuanhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JZNearItemCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *shopImageView;

@property (weak, nonatomic) IBOutlet UILabel *shopTitleLabel;

@property (weak, nonatomic) IBOutlet UILabel *shopDesLabel;

@property (weak, nonatomic) IBOutlet UILabel *shopNewPriceLabel;

@property (weak, nonatomic) IBOutlet UILabel *shopOldPriceLabel;

@property (weak, nonatomic) IBOutlet UILabel *shopActivityLabel;

@end



@interface JZNearShopCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *shopImageView;
@property (weak, nonatomic) IBOutlet UILabel *shopTitleLabel;
@end
