//
//  TopicListViewController.m
//  TestViewPager
//
//  Created by user on 15/12/21.
//  Copyright (c) 2015年 wechat ericbluce. All rights reserved.
//

#import "TopicListViewController.h"

@interface TopicListViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation TopicListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
        self.automaticallyAdjustsScrollViewInsets = NO;
    
    
    _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.estimatedRowHeight = 80.0f;

         [self.view addSubview:_tableView];
    
#ifdef IOS_8_NEW_FEATURE_SELF_SIZING
    // iOS 8 的Self-sizing特性
    if ([UIDevice currentDevice].systemVersion.integerValue > 7) {
        _tableView.rowHeight = UITableViewAutomaticDimension;
    }
#endif
    
    // 注册Cell
    [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CellIdentifier"];
    
//    [self generateData];
    
    [_tableView reloadData];
}

#pragma mark - Private methods


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* cellIdentifier = @"CellIdentifier";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Example%@",@(indexPath.row+1)];
    
    return cell;
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
