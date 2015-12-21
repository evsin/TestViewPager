//
//  TopicListViewController.h
//  TestViewPager
//
//  Created by user on 15/12/21.
//  Copyright (c) 2015年 wechat ericbluce. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "TopicListTableView.h"

typedef NS_ENUM(NSInteger, TopicListType) {
    TopicListTypeNewest = 0,
    TopicListTypeHots = 1,
    TopicListTypeNoReply = 2,
    TopicListTypeJob = 3,
    TopicListTypeFavorite = 4,
    TopicListTypeAttention = 5,
    TopicListTypeNormal = 6,
};

@interface TopicListViewController : UIViewController
@property (nonatomic) TopicListType topicListType;
@property (nonatomic, assign) NSInteger userId;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, assign) BOOL isFromTopicContainer;
@end
