//
//  UIImage+WalterMarkImage.m
//  Quartz2Demo
//
//  Created by Duomai on 15/9/18.
//  Copyright © 2015年 zpf. All rights reserved.
//

#import "UIImage+WalterMarkImage.h"

@implementation UIImage (WalterMarkImage)
+(UIImage*)imageFrom:(NSString*)imageName markText:(NSString*)marKText{
    UIImage * image = [UIImage imageNamed:imageName];
    UIGraphicsBeginImageContextWithOptions(image.size, NO, 0.0);
    [image drawAtPoint:CGPointZero];
    
    NSDictionary * dict = @{NSForegroundColorAttributeName:[UIColor redColor],NSFontAttributeName:[UIFont systemFontOfSize:18]};
    [marKText drawAtPoint:CGPointMake(image.size.width * 0.5, image.size.height * 0.5) withAttributes:dict];
    
    UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return newImage;
}
@end
