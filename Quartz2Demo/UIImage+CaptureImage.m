//
//  UIImage+CaptureImage.m
//  Quartz2Demo
//
//  Created by Duomai on 15/9/18.
//  Copyright © 2015年 zpf. All rights reserved.
//

#import "UIImage+CaptureImage.h"

@implementation UIImage (CaptureImage)
+(instancetype)captureWithView:(UIView*)view{
    
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, 0.0);
    CGContextRef  context =   UIGraphicsGetCurrentContext();
    
    [view.layer renderInContext:context];
    
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
    
}
@end
