//
//  LCTabBarController.m
//  StoryBoardDemo
//
//  Created by 杨绍仪 on 2018/1/2.
//  Copyright © 2018年 yuanhang. All rights reserved.
//

#import "LCTabBarController.h"
#import "LCTabBar.h"

@interface LCTabBarController ()<UITabBarControllerDelegate,LCTabBarDelegate>

@end

@implementation LCTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initTabBarItem];
}

- (void)initTabBarItem {
    UITabBar *tabbar = self.tabBar;
    //    self.tabBarController.tabBar;
    UITabBarItem *item0 = [tabbar.items objectAtIndex:0];
    UITabBarItem *item1 = [tabbar.items objectAtIndex:1];
//    UITabBarItem *item2 = [tabbar.items objectAtIndex:2];
    UITabBarItem *item3 = [tabbar.items objectAtIndex:3];
    UITabBarItem *item4 = [tabbar.items objectAtIndex:4];
    
    item0.selectedImage = [[UIImage imageNamed:@"icon_tab_shouye_highlight"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item0.image = [[UIImage imageNamed:@"icon_tab_shouye_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item1.selectedImage = [[UIImage imageNamed:@"icon_tab_fujin_highlight"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item1.image = [[UIImage imageNamed:@"icon_tab_fujin_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
//    item2.selectedImage = [[UIImage imageNamed:@"tabbar_voice_icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    item2.image = [[UIImage imageNamed:@"tabbar_voice_icon"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    item2.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);//注意这里的两个值
    
    item3.selectedImage = [[UIImage imageNamed:@"tab_icon_selection_highlight"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item3.image = [[UIImage imageNamed:@"tab_icon_selection_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item4.selectedImage = [[UIImage imageNamed:@"icon_tab_wode_highlight"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item4.image = [[UIImage imageNamed:@"icon_tab_wode_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    LCTabBar *tab = [LCTabBar instanceCustomTabBarWithType:LCItemUIType_Five];
    tab.centerBtnIcon = @"tab_voice";
    tab.tabDelegate = self;
    [self setValue:tab forKey:@"tabBar"];
    //改变UITabBarItem字体颜色
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:navigationBarColor,NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    
    [[UITabBar appearance] setBackgroundImage:[UIImage new]];
    [[UITabBar appearance] setShadowImage:[UIImage new]];
    [[UITabBar appearance] setBackgroundColor:[UIColor whiteColor]];
    //自定义分割线颜色
    UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(-0.5, 0, self.tabBar.bounds.size.width+1, 0.5)];
    bgView.layer.borderColor = COLORlINE.CGColor;
    bgView.layer.borderWidth = 0.5;
    [tab insertSubview:bgView atIndex:0];
    tab.opaque = YES;
    bgView.autoresizingMask =UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleLeftMargin;
}

-(void)tabBar:(LCTabBar *)tabBar clickCenterButton:(UIButton *)sender{
    self.selectedIndex=2;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
