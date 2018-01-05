//
//  VoiceController.m
//  StoryBoardDemo
//
//  Created by 杨绍仪 on 2018/1/5.
//  Copyright © 2018年 yuanhang. All rights reserved.
//

#import "VoiceController.h"
#import "JZNearItemCell.h"

@interface VoiceController ()<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>{
    NSInteger _pageIndex;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView1;
@property (weak, nonatomic) IBOutlet UITableView *tableView2;
@property (weak, nonatomic) IBOutlet UITableView *tableView3;
@property (weak, nonatomic) IBOutlet UITableView *tableView4;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *indicatorViewLeadConstranint;


@end

@implementation VoiceController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Event

- (IBAction)clickedTopButton:(UIButton *)button {
    [self.scrollView setContentOffset:CGPointMake(self.scrollView.frame.size.width*(button.tag-10), 0) animated:YES];
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

#pragma mark - UIScrollViewDelegate
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    if (scrollView == self.scrollView) {
        CGFloat offsetX=scrollView.contentOffset.x/4;
        //获取页面
        NSInteger page=(offsetX / (self.scrollView.frame.size.width/4)) + .5f;
        for (int i = 0; i < 4; i ++) {
            UIButton *button = (UIButton *)[self.view viewWithTag:i+10];
            button.selected = page == button.tag-10;
        }
        if (offsetX >= 0 && offsetX <= self.view.bounds.size.width*3/4) {
            self.indicatorViewLeadConstranint.constant =  offsetX;
        }else if (offsetX < 0) {
            self.indicatorViewLeadConstranint.constant = 0;
        }
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    if (scrollView == self.scrollView) {
        [self scrollViewDidEndScrollingAnimation:scrollView];
    }
}
- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView {
    if (scrollView == self.scrollView) {
        //获取页面
        CGFloat offsetX=scrollView.contentOffset.x/4;
        NSInteger page=(offsetX / (self.scrollView.frame.size.width/4)) + .5f;
        if (page == 0) {
        }else if (page == 1) {
        }
        else if (page == 2) {
        }
        else if (page == 3) {
        }
        _pageIndex = page;
    }
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    [self.scrollView setContentOffset:CGPointMake(self.scrollView.frame.size.width*_pageIndex, 0) animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
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
