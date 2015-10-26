//
//  NSSet+AWHelper.h
//  AWHelper_Demo
//
//  Created by AlanWong on 15/9/29.
//  Copyright (c) 2015年 AlanWong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSSet (AWHelper)
- (NSSet *)map:(id (^)(id value))handlerBlock;
- (NSSet *)filter:(BOOL (^)(id value))handlerBlock;
- (NSSet *)reject:(BOOL (^)(id value))handlerBlock ;
@end
