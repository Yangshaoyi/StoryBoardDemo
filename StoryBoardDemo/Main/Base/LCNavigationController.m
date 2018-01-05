//
//  LCNavigationController.m
//  StoryBoardDemo
//
//  Created by 杨绍仪 on 2018/1/2.
//  Copyright © 2018年 yuanhang. All rights reserved.
//

#import "LCNavigationController.h"

@interface LCNavigationController ()<UIGestureRecognizerDelegate,UINavigationControllerDelegate>

@end

@implementation LCNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (viewController) {
        if (self.viewControllers.count) {
            viewController.hidesBottomBarWhenPushed = YES;
        }
        if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
            self.interactivePopGestureRecognizer.delegate = self;
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [super pushViewController:viewController animated:animated];
        });
    }
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
