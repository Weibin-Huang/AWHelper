//
//  UIView+RoundedCorners.m
//  AWHelper_Demo
//
//  Created by AlanWong on 15/10/19.
//  Copyright © 2015年 AlanWong. All rights reserved.
//

#import "UIView+RoundedCorners.h"

@implementation UIView (RoundedCorners)
-(void)aw_setRoundedCorners:(UIRectCorner)corners radius:(CGFloat)radius {
    CGRect rect = self.bounds;
    
    // Create the path
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:rect
                                                   byRoundingCorners:corners
                                                         cornerRadii:CGSizeMake(radius, radius)];
    
    // Create the shape layer and set its path
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = rect;
    maskLayer.path = maskPath.CGPath;
    
    // Set the newly created shape layer as the mask for the view's layer
    self.layer.mask = maskLayer;
}

- (void)aw_setRoundedAllCornersWithRadius:(CGFloat)radius{
    [self aw_setRoundedCorners:UIRectCornerAllCorners radius:radius];
}

@end
