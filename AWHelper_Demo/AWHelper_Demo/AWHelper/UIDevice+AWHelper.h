//
//  UIDevice+AWHelper.h
//  AWHelper_Demo
//
//  Created by AlanWong on 15/10/20.
//  Copyright © 2015年 AlanWong. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger ,AWDeviceType){
    // 未知设备类型
    AWDeviceType_None           = 0,
    // iPhone 1,3,3GS 标准分辨率(320x480px)
    AWDeviceType_iPhoneStandard = 1 << 0,
    // iPhone 4,4S 高清分辨率(640x960px)
    AWDeviceType_iPhoneRetina   = 1 << 1,
    // iPhone 5 高清分辨率(640x1136px)
    AWDeviceType_iPhone5        = 1 << 2,
    // iPhone 6 高清分辨率(750x1334px)
    AWDeviceType_iPhone6        = 1 << 3,
    // iPhone 6 Plus 高清分辨率(1242x2208px)
    AWDeviceType_iPhone6Plus    = 1 << 4,
    // iPad 1,2 标准分辨率(1024x768px)
    AWDeviceType_iPadStandard   = 1 << 5,
    // iPad 3 High Resolution(2048x1536px)
    AWDeviceType_iPadRetina     = 1 << 6

};

@interface UIDevice (AWHelper)
/**
 *  获取当前设备类型
 *
 *  @return UIDeviceType
 */
+ (AWDeviceType)aw_currentDeviceType;

/**
 *  当前是否运行在iPhone5以上的设备，包括iPhone5
 *
 *  @return true or false
 */
+ (BOOL)aw_isRunningOveriPhone5;
+ (BOOL)aw_isRunningOveriPhone6;
+ (BOOL)aw_isRunningAtiPhone6Plus;

//是否为iPad设备
+ (BOOL)aw_isiPadDevice;
//是否为iPhone设备
+ (BOOL)aw_isiPhoneDevice;
//是否为高清设备
+ (BOOL)aw_isHighResolutionDevice;

//系统版本是否高于给定的version（包含version）
+ (BOOL)aw_isAboveiOSVersion:(float)version;

/**
 *  获取设备的硬件型号
 *
 *  @return (iPhone3,1) or (iPhone4,1) etc
 */
+ (NSString *)aw_platform;

/**
 *  获取设备的Mac地址
 *
 *  @return 设备的Mac地址,不带冒号
 */
+ (NSString *)aw_macAddress;

/**
 *  获取设备的Mac地址
 *
 *  @return 设备的Mac地址,中间以冒号隔开
 */
+ (NSString *)aw_macAddressWithColon;



@end
