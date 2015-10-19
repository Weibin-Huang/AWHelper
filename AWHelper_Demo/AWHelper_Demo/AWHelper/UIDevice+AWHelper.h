//
//  UIDevice+AWHelper.h
//  AWHelper_Demo
//
//  Created by AlanWong on 15/10/20.
//  Copyright © 2015年 AlanWong. All rights reserved.
//

#import <UIKit/UIKit.h>

#define isAboveiPhone5 ([UIDevice isRunningOveriPhone5])
#define isAboveiPhone6 ([UIDevice isRunningOveriPhone6])
#define isiPhone6Plus ([UIDevice isRunningAtiPhone6Plus])
#define isAboveiOS8 ([UIDevice isAboveiOSVersion:8.0f])

enum {
    // 未知设备类型
    UIDeviceType_None           = 0,
    // iPhone 1,3,3GS 标准分辨率(320x480px)
    UIDeviceType_iPhoneStandard = 1 << 0,
    // iPhone 4,4S 高清分辨率(640x960px)
    UIDeviceType_iPhoneRetina   = 1 << 1,
    // iPhone 5 高清分辨率(640x1136px)
    UIDeviceType_iPhone5        = 1 << 2,
    // iPhone 6 高清分辨率(750x1334px)
    UIDeviceType_iPhone6        = 1 << 3,
    // iPhone 6 Plus 高清分辨率(1242x2208px)
    UIDeviceType_iPhone6Plus    = 1 << 4,
    // iPad 1,2 标准分辨率(1024x768px)
    UIDeviceType_iPadStandard   = 1 << 5,
    // iPad 3 High Resolution(2048x1536px)
    UIDeviceType_iPadRetina     = 1 << 6
}; typedef NSUInteger UIDeviceType;

@interface UIDevice (AWHelper)
/**
 *  获取当前设备类型
 *
 *  @return UIDeviceType
 */
+ (UIDeviceType)currentDeviceType;

/**
 *  当前是否运行在iPhone5以上的设备，包括iPhone5
 *
 *  @return true or false
 */
+ (BOOL)isRunningOveriPhone5;
+ (BOOL)isRunningOveriPhone6;
+ (BOOL)isRunningAtiPhone6Plus;

//是否为iPad设备
+ (BOOL)isiPadDevice;
//是否为iPhone设备
+ (BOOL)isiPhoneDevice;
//是否为高清设备
+ (BOOL)isHighResolutionDevice;

//系统版本是否高于给定的version（包含version）
+ (BOOL)isAboveiOSVersion:(float)version;

/**
 *  获取设备的硬件型号
 *
 *  @return (iPhone3,1) or (iPhone4,1) etc
 */
+ (NSString *)platform;

/**
 *  获取设备的Mac地址
 *
 *  @return 设备的Mac地址,不带冒号
 */
+ (NSString *)macAddress;

/**
 *  获取设备的Mac地址
 *
 *  @return 设备的Mac地址,中间以冒号隔开
 */
+ (NSString *)macAddressWithColon;

/**
 *  获取设备的唯一编号
 *
 *  @return 设备的唯一编号
 */
+ (NSString *)uniqueDeviceIdentifier;


@end
