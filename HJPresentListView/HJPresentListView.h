//
//  HJPresentListView.h
//  
//
//  Created by ZhaoHanjun on 15/12/28.
//  Copyright © 2015年 http://weibo.com/hanjunzhao .All rights reserved.
//

typedef enum {
    HJNomal, // 黑色
    HJOrange // 橙色
} HJColorStyle;

#import <UIKit/UIKit.h>

@protocol HJPresentListViewDelegate <NSObject>

@optional

- (void)PresentListView:(UIView *)presentListView clickedButtonAtIndex:(NSInteger)buttonIndex;

- (void)PresentListView:(UIView *)presentListView clickedButtonTitle:(NSString *)buttonTitle;

@end

@interface HJPresentListView : UIView

@property (nonatomic, weak)id<HJPresentListViewDelegate> delegate;

- (instancetype)initWithFrame:(CGRect)frame Titles:(NSArray *)titles ColorStyle:(HJColorStyle)colorStyle;

@end
