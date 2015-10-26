//
//  NSJSONSerialization+AWHelper.h
//  AWHelper_Demo
//
//  Created by AlanWong on 15/10/20.
//  Copyright © 2015年 AlanWong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSJSONSerialization (AWHelper)
+ (id)JSONObjectWithData:(NSData *)data;
+ (NSData *)dataWithJSONObject:(id)jsonObject;
+ (NSString *)stringWithJSONObject:(id)jsonObject;
@end
