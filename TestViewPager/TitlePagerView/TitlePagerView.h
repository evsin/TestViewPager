//
//  TitlePagerView.h
//  TestViewPager
//
//  Created by wechat ericbluce on 9/22/15.
//  Copyright (c) 2015 wechat ericbluce. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TitlePagerViewDelegate <NSObject>
@optional
- (void)didTouchBWTitle:(NSUInteger)index;
@end

@interface TitlePagerView : UIView

@property (nonatomic, strong) UIFont *font;
@property (nonatomic, weak) id<TitlePagerViewDelegate> delegate;

- (void)addObjects:(NSArray *)images;
- (void)adjustTitleViewByIndex:(CGFloat)index;
+ (CGFloat)calculateTitleWidth:(NSArray *)titleArray withFont:(UIFont *)titleFont;
- (void)updatePageIndicatorPosition:(CGFloat)xPosition;
@end
