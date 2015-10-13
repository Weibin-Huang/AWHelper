//
//  UIView+AWHelper.h
//  AWHelper_Demo
//
//  Created by AlanWong on 15/9/23.
//  Copyright (c) 2015年 AlanWong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (AWHelper)
@property (nonatomic) CGFloat x;
@property (nonatomic) CGFloat y;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
@property (nonatomic) CGSize  size;
@property (nonatomic) CGPoint origin;
@property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat right;
@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;

//移除所有的SubView
- (void)aw_removeAllSubviews;
//避免控件模糊化
- (void)aw_expandFrameToIntegral;
@end
