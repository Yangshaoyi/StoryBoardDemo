//
//  IndexController.m
//  StoryBoardDemo
//
//  Created by 杨绍仪 on 2018/1/5.
//  Copyright © 2018年 yuanhang. All rights reserved.
//

#import "IndexController.h"

#import "SDCycleScrollView.h"
#import "WebController.h"
#import "JZNearItemCell.h"

@interface IndexController ()<UITableViewDataSource,UITableViewDelegate,SDCycleScrollViewDelegate>{
    NSArray *_urlList;
    NSInteger _bannerIndex;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet SDCycleScrollView *bannerView;

@end

@implementation IndexController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self reloadUI];
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

#pragma mark - UITabelViewDelegate

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
    return 2;
}

#pragma mark - UI

- (void)reloadUI {
    
    NSArray *imagesURLStrings = @[@"book1",@"book2",@"book3",@"book4"
                                  ];
    // 图片配文字
    NSArray *titles = @[@"iOS开发指南",
                        @"iOS开发指南(OC+Swift)",
                        @"iOS疯狂讲义(上)",
                        @"iOS疯狂讲义(下)"
                        ];
    self.bannerView.localizationImageNamesGroup = imagesURLStrings;
    self.bannerView.pageControlAliment = SDCycleScrollViewPageContolAlimentRight;
    self.bannerView.delegate = self;
    self.bannerView.titlesGroup = titles;
    self.bannerView.currentPageDotColor = [UIColor yellowColor]; // 自定义分页控件小圆标颜色
    self.bannerView.placeholderImage = [UIImage imageNamed:@"placeholder"];
    _urlList = @[
                 @"http://www.jb51.net/books/331305.html",
                 @"http://www.jb51.net/books/488566.html",
                 @"http://www.jb51.net/books/330507.html",
                 @"http://www.jb51.net/books/330508.html",
                 ];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    UIView *view = self.tableView.tableHeaderView;
    CGRect rect = view.frame;
    rect.size.height = self.tableView.frame.size.width/2;
    view.frame = rect;
    self.tableView.tableHeaderView = view;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - SDCycleScrollViewDelegate

- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index {
    _bannerIndex = index;
    [self performSegueWithIdentifier:@"webSeg" sender:nil];
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"webSeg"]) {
        WebController *webVC = (WebController *)segue.destinationViewController;
        webVC.url = [_urlList objectAtIndex:_bannerIndex];
    }
}


@end
