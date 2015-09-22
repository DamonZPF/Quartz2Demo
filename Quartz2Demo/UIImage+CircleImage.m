//
//  UIImage+CircleImage.m
//  Quartz2Demo
//
//  Created by Duomai on 15/9/18.
//  Copyright © 2015年 zpf. All rights reserved.
//

#import "UIImage+CircleImage.h"

@implementation UIImage (CircleImage)
+(instancetype)circleImageWithName:(NSString*)imageName{
    
    UIImage * image = [UIImage imageNamed:imageName];
    
    UIGraphicsBeginImageContextWithOptions(image.size, NO, 0.0);
    
    UIBezierPath * path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, image.size.width, image.size.height)];
    
    [path addClip];
    
    [image drawAtPoint:CGPointZero];
    
    UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    return newImage;
}
@end
