//
//  UIView+RoundedCorners.h
//  AWHelper_Demo
//
//  Created by AlanWong on 15/10/19.
//  Copyright © 2015年 AlanWong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (RoundedCorners)
- (void)aw_setRoundedCorners:(UIRectCorner)corners radius:(CGFloat)radius;

- (void)aw_setRoundedAllCornersWithRadius:(CGFloat)radius;
@end
