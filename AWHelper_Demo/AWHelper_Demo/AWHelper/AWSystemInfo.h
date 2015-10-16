//
//  AWSystemInfo.h
//  AWHelper_Demo
//
//  Created by AlanWong on 15/9/27.
//  Copyright © 2015年 AlanWong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AWSystemInfo : NSObject
+(NSString *)osVersion;

+(NSString *)appVersion;

+(NSString *)deviceModel;
/**
 *  is 
 *
 *  @return <#return value description#>
 */
+(BOOL)isJailBroken;

+(NSString *)jailBreaker;

@end
