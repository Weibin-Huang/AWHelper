//
//  AWUtilsMacro.h
//  AWHelper_Demo
//
//  Created by AlanWong on 15/10/12.
//  Copyright © 2015年 AlanWong. All rights reserved.
//

#ifndef AWUtilsMacro_h
#define AWUtilsMacro_h

//Double equal judge
//is equal
#define AWDoubleEqual(a,b)          (fabs(a - b) < 0.0000001)
//is equal or greater than
#define AWDoubleGreaterEqual(a,b)   (AWDoubleEqual(a,b) || a > b)
//is equal or lesser than
#define AWDoubleLessEqual(a,b)      (AWDoubleEqual(a,b) || a < b)


//Convert Hex value to UIColor
#define AWColorFromRGB(rgbValue)	[UIColor colorWithRed:((float)(((rgbValue) & 0xFF0000) >> 16))/255.0 \
green:((float)(((rgbValue) & 0x00FF00) >> 8))/255.0 \
blue:((float)((rgbValue) & 0x0000FF))/255.0 \
alpha:1.0]


//use AWLog to print while in debug model
#ifdef DEBUG
#   define AWLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#   define AWLog(...)
#endif


#endif /* AWUtilsMacro_h */
