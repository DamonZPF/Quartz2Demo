//
//  ColumnView.m
//  Quartz2Demo
//
//  Created by Duomai on 15/9/17.
//  Copyright © 2015年 zpf. All rights reserved.
//

#import "ColumnView.h"
#import "UIColor+Extentions.h"
@implementation ColumnView

- (void)drawRect:(CGRect)rect {
   
    NSArray * data = @[@30,@50,@30,@10];
      NSInteger count = data.count;
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat w = rect.size.width / (2 * count - 1);
    CGFloat h = 0;
    
    for (int index = 0; index  < count; index++) {
        
        h = rect.size.height *( [data[index] intValue] / 100.0);
        x = w *index*2;
        y = rect.size.height - h;
        UIBezierPath * path = [UIBezierPath bezierPathWithRect:CGRectMake(x, y, w, h)];
        
        [[UIColor random] set];
        CGContextAddPath(currentContext, path.CGPath);
        CGContextFillPath(currentContext);
       
        
    }
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self setNeedsDisplay];
}


@end
