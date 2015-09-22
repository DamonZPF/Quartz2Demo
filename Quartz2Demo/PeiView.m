//
//  PeiView.m
//  Quartz2Demo
//
//  Created by Duomai on 15/9/17.
//  Copyright (c) 2015年 zpf. All rights reserved.
//

#import "PeiView.h"
#import "UIColor+Extentions.h"
@implementation PeiView

- (void)drawRect:(CGRect)rect {
    
    CGContextRef currentContent = UIGraphicsGetCurrentContext();
    
    CGPoint center = CGPointMake(self.bounds.size.width * 0.5, self.bounds.size.height * 0.5);
    CGFloat radius = self.bounds.size.width * 0.5 - 10;
    CGFloat start = 0 ;
    CGFloat angle = 0;
    CGFloat end = 0;
    NSArray * data = @[@25,@35,@40];
    for (NSNumber  * number in data) {
        start = end;
        angle = (number.floatValue) / 100.0 * M_PI * 2;
        end = start + angle;
        UIBezierPath * path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:start endAngle:end clockwise:YES];
        [path addLineToPoint:center];
        [[UIColor random] set];
        CGContextAddPath(currentContent, path.CGPath);
        CGContextFillPath(currentContent);
        
    }

    //[self drawPie];

}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{

    [self setNeedsDisplay];
}

-(void)drawPie{

    CGContextRef currentContent = UIGraphicsGetCurrentContext();
    
    CGPoint center = CGPointMake(self.bounds.size.width * 0.5, self.bounds.size.height * 0.5);
    CGFloat radius = self.bounds.size.width * 0.5 - 10;
    CGFloat start = 0 ;
    CGFloat angle = 0;
    CGFloat end = 0;
    angle = 25 / 100.0 * M_PI * 2;
    end = start + angle;
    UIBezierPath * path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:start endAngle:end clockwise:YES];
    [path addLineToPoint:center];
    [[UIColor purpleColor] set];
    CGContextAddPath(currentContent, path.CGPath);
    CGContextFillPath(currentContent);
    
    
    
    start = end;
    angle = 25 / 100.0 * M_PI * 2;
    end = start + angle;
    UIBezierPath * path2 = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:start endAngle:end clockwise:YES];
    [path2 addLineToPoint:center];
    [[UIColor redColor] set];
    CGContextAddPath(currentContent, path2.CGPath);
    CGContextFillPath(currentContent);
    
    
    start = end;
    angle = 50 / 100.0 * M_PI * 2;
    end = start + angle;
    UIBezierPath * path3 = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:start endAngle:end clockwise:YES];
    [path2 addLineToPoint:center];
    [[UIColor blackColor] set];
    CGContextAddPath(currentContent, path3.CGPath);
    CGContextFillPath(currentContent);
}


@end
