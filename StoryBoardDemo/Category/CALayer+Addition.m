//
//  CALayer+Addition.m
//  CollectionView
//
//  Created by 杨绍仪 on 15/11/24.
//  Copyright © 2015年 hongan. All rights reserved.
//

#import "CALayer+Addition.h"

@implementation CALayer (Addition)

-(void)setBorderUIColor:(UIColor*)color
{
    self.borderColor = color.CGColor;
}

-(UIColor*)borderUIColor
{
    return [UIColor colorWithCGColor:self.borderColor];
}

@end
