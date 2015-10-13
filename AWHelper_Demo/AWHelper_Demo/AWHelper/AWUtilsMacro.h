//
//  AWUtilsMacro.h
//  AWHelper_Demo
//
//  Created by AlanWong on 15/10/12.
//  Copyright © 2015年 AlanWong. All rights reserved.
//

#ifndef AWUtilsMacro_h
#define AWUtilsMacro_h

//Double 判断
//等于
#define AWDoubleEqual(a,b)          (fabs(a - b) < 0.0000001)
//大于等于
#define AWDoubleGreaterEqual(a,b)   (AWDoubleEqual(a,b) || a > b)
//小于等于
#define AWDoubleLessEqual(a,b)      (AWDoubleEqual(a,b) || a < b)


#define AWColorFromRGB(rgbValue)	[UIColor colorWithRed:((float)(((rgbValue) & 0xFF0000) >> 16))/255.0 \
green:((float)(((rgbValue) & 0x00FF00) >> 8))/255.0 \
blue:((float)((rgbValue) & 0x0000FF))/255.0 \
alpha:1.0]

//用AWLog替代NSLog输出
#ifdef DEBUG
#   define AWLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#   define AWLog(...)
#endif


#endif /* AWUtilsMacro_h */
