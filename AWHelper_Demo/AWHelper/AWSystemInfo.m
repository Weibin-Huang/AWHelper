//
//  AWSystemInfo.m
//  AWHelper_Demo
//
//  Created by AlanWong on 15/9/27.
//  Copyright © 2015年 AlanWong. All rights reserved.
//

#import "AWSystemInfo.h"
#import <UIKit/UIDevice.h>
@implementation AWSystemInfo
+ (NSString *)osVersion{
    return [NSString stringWithFormat:@"%@ %@", [UIDevice currentDevice].systemName, [UIDevice currentDevice].systemVersion];
}

+ (NSString *)appVersion
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
}

+ (NSString *)deviceModel
{
    return [UIDevice currentDevice].model;
}

static const char * __jb_app = NULL;

+ (BOOL)isJailBroken
{
    static const char * __jb_apps[] =
    {
        "/Application/Cydia.app",
        "/Application/limera1n.app",
        "/Application/greenpois0n.app",
        "/Application/blackra1n.app",
        "/Application/blacksn0w.app",
        "/Application/redsn0w.app",
        "/Applications/Absinthe.app",
        NULL
    };
    
    __jb_app = NULL;
    
    // method 1
    for ( int i = 0; __jb_apps[i]; ++i )
    {
        if ( [[NSFileManager defaultManager] fileExistsAtPath:[NSString stringWithUTF8String:__jb_apps[i]]] )
        {
            __jb_app = __jb_apps[i];
            return YES;
        }
    }
    
    // method 2
    if ( [[NSFileManager defaultManager] fileExistsAtPath:@"/private/var/lib/apt/"] )
    {
        return YES;
    }
    
    return NO;
}

+ (NSString *)jailBreaker
{
    if ([self isJailBroken] && __jb_app )
    {
        return [NSString stringWithUTF8String:__jb_app];
    }
    else
    {
        return @"";
    }
}

@end
