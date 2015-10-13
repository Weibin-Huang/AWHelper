//
//  UIButton+AWHelper.h
//  AWHelper_Demo
//
//  Created by AlanWong on 15/9/23.
//  Copyright (c) 2015年 AlanWong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (AWHelper)

//设置不同state的BackgroundColor

- (void)aw_setBackgroundColor:(UIColor *)color forState:(UIControlState)state;

@end
