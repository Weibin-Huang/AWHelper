//
//  NSJSONSerialization+AWHelper.m
//  AWHelper_Demo
//
//  Created by AlanWong on 15/10/20.
//  Copyright © 2015年 AlanWong. All rights reserved.
//

#import "NSJSONSerialization+AWHelper.h"

@implementation NSJSONSerialization (AWHelper)
+ (id)JSONObjectWithData:(NSData *)data{
    if (nil == data) {
        return nil;
    }
    NSError * error = nil;
    return [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
}

+ (NSData *)dataWithJSONObject:(id)jsonObject{
    if (nil == jsonObject) {
        return nil;
    }
    NSError * error = nil;
    return [NSJSONSerialization dataWithJSONObject:jsonObject options:kNilOptions error:&error];
}

+ (NSString *)stringWithJSONObject:(id)jsonObject{
    if (nil == jsonObject) {
        return nil;
    }
    NSData * data = [self dataWithJSONObject:jsonObject];
    if (nil == data) {
        return nil;
    }
    return [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
}
@end
