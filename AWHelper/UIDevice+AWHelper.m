//
//  UIDevice+AWHelper.m
//  AWHelper_Demo
//
//  Created by AlanWong on 15/10/20.
//  Copyright © 2015年 AlanWong. All rights reserved.
//

#import "UIDevice+AWHelper.h"
#include <sys/types.h>
#include <sys/sysctl.h>
#include <sys/socket.h>
#include <net/if.h>
#include <net/if_dl.h>
@implementation UIDevice (AWHelper)


+ (AWDeviceType)aw_currentDeviceType {
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        //iPad
        if ([self aw_isHighResolutionDevice]) {
            return AWDeviceType_iPadRetina;
        }
        return AWDeviceType_iPadStandard;
    }
    else {
        //iPhone
        if ([self aw_isHighResolutionDevice]) {
            CGSize result = [[UIScreen mainScreen] bounds].size;
            result = CGSizeMake(result.width * [UIScreen mainScreen].scale, result.height * [UIScreen mainScreen].scale);
            if (result.height == 960.0f) {
                return AWDeviceType_iPhoneRetina;
            } else if (result.height == 1136.0f) {
                return AWDeviceType_iPhone5;
            } else if (result.height == 1334.0f || result.height == 1136.0f) {
                return AWDeviceType_iPhone6;
            } else if (result.height == 2208.0f  || result.height == 2001.f ) {
                return AWDeviceType_iPhone6Plus;
            }
        }
        
        return AWDeviceType_iPhoneStandard;
    }
    
}

+ (BOOL)aw_isRunningOveriPhone5 {
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        return [self aw_currentDeviceType] >= AWDeviceType_iPhone5;
    }
    return NO;
}

+ (BOOL)aw_isRunningOveriPhone6 {
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        return [self aw_currentDeviceType] >= AWDeviceType_iPhone6;
    }
    return NO;
}

+ (BOOL)aw_isRunningAtiPhone6Plus {
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        return [self aw_currentDeviceType] == AWDeviceType_iPhone6Plus;
    }
    return NO;
}

+ (BOOL)aw_isiPadDevice {
    return UIUserInterfaceIdiomPad == [UIDevice currentDevice].userInterfaceIdiom;
}

+ (BOOL)aw_isiPhoneDevice {
    return UIUserInterfaceIdiomPhone == [UIDevice currentDevice].userInterfaceIdiom;
}

+ (BOOL)aw_isHighResolutionDevice {
    return ([UIScreen mainScreen].scale + 0.01) > 2.0;
}

+ (BOOL)aw_isAboveiOSVersion:(float)version
{
    return [[[UIDevice currentDevice] systemVersion] floatValue] >= version;
}

+ (NSString *)aw_platform {
    size_t size;
    sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    char *machine = malloc(size);
    sysctlbyname("hw.machine", machine, &size, NULL, 0);
    NSString *platform = [NSString stringWithCString:machine encoding:NSUTF8StringEncoding];
    free(machine);
    return platform;
}

+ (NSString *)aw_macAddress {
    int mib[6];
    size_t len;
    char *buf;
    unsigned char *ptr;
    struct if_msghdr *ifm;
    struct sockaddr_dl *sdl;
    
    mib[0] = CTL_NET;
    mib[1] = AF_ROUTE;
    mib[2] = 0;
    mib[3] = AF_LINK;
    mib[4] = NET_RT_IFLIST;
    
    if ((mib[5] = if_nametoindex("en0")) == 0) {
        printf("Error: if_nametoindex error/n");
        return @"";
    }
    
    if (sysctl(mib, 6, NULL, &len, NULL, 0) < 0) {
        printf("Error: sysctl, take 1/n");
        return @"";
    }
    
    if ((buf = malloc(len)) == NULL) {
        printf("Could not allocate memory. error!/n");
        return @"";
    }
    
    if (sysctl(mib, 6, buf, &len, NULL, 0) < 0) {
        printf("Error: sysctl, take 2");
        return @"";
    }
    
    ifm = (struct if_msghdr *)buf;
    sdl = (struct sockaddr_dl *)(ifm + 1);
    ptr = (unsigned char *)LLADDR(sdl);
    NSString *outstring = [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x", *ptr, *(ptr + 1), *(ptr + 2), *(ptr + 3), *(ptr + 4), *(ptr + 5)];
    free(buf);
    return [outstring uppercaseString];
}

+ (NSString *)aw_macAddressWithColon {
    int mib[6];
    size_t len;
    char *buf;
    unsigned char *ptr;
    struct if_msghdr *ifm;
    struct sockaddr_dl *sdl;
    
    mib[0] = CTL_NET;
    mib[1] = AF_ROUTE;
    mib[2] = 0;
    mib[3] = AF_LINK;
    mib[4] = NET_RT_IFLIST;
    
    if ((mib[5] = if_nametoindex("en0")) == 0) {
        printf("Error: if_nametoindex error/n");
        return @"";
    }
    
    if (sysctl(mib, 6, NULL, &len, NULL, 0) < 0) {
        printf("Error: sysctl, take 1/n");
        return @"";
    }
    
    if ((buf = malloc(len)) == NULL) {
        printf("Could not allocate memory. error!/n");
        return @"";
    }
    
    if (sysctl(mib, 6, buf, &len, NULL, 0) < 0) {
        printf("Error: sysctl, take 2");
        return @"";
    }
    
    ifm = (struct if_msghdr *)buf;
    sdl = (struct sockaddr_dl *)(ifm + 1);
    ptr = (unsigned char *)LLADDR(sdl);
    NSString *outstring = [NSString stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", *ptr, *(ptr + 1), *(ptr + 2), *(ptr + 3), *(ptr + 4), *(ptr + 5)];
    free(buf);
    return [outstring uppercaseString];
}



@end
