//
//  NSObject+AWHelper.h
//  AWHelper_Demo
//
//  Created by AlanWong on 15/9/29.
//  Copyright (c) 2015年 AlanWong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (AWHelper)
- (void)performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay;
@end
