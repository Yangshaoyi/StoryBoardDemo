//
//  NearController.m
//  StoryBoardDemo
//
//  Created by 杨绍仪 on 2018/1/4.
//  Copyright © 2018年 yuanhang. All rights reserved.
//

#import "NearController.h"

#import "JZNearItemCell.h"

@interface NearController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation NearController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 20;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        JZNearShopCell *cell = [tableView dequeueReusableCellWithIdentifier:@"JZNearShopCell" forIndexPath:indexPath];
        return cell;
    }else {
        JZNearItemCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NearItemCell" forIndexPath:indexPath];
        return cell;
    }
    
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return 44;
    }
    return 90;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0.001;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 10;
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
