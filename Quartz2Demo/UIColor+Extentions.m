//
//  UIColor+Extentions.m
//  Quartz2Demo
//
//  Created by Duomai on 15/9/17.
//  Copyright (c) 2015年 zpf. All rights reserved.
//

#import "UIColor+Extentions.h"

@implementation UIColor (Extentions)
+(UIColor*)random{

    CGFloat r = arc4random_uniform(256) / 255.0;
    CGFloat g = arc4random_uniform(256) / 255.0;
    CGFloat b = arc4random_uniform(256) / 255.0;
    UIColor * color = [UIColor colorWithRed:r green:g blue:b alpha:1.0];
    return color;
}
@end
