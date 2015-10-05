//
//  UIColor+AWHelper.h
//  AWHelper_Demo
//
//  Created by AlanWong on 15/9/29.
//  Copyright (c) 2015年 AlanWong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (AWHelper)
+ (UIColor *)colorWithRGBHex:(UInt32)hex;
+ (UIColor *)colorWithRGBHex:(UInt32)hex alpha:(CGFloat)alpha;
@end
