//
//  LineView.m
//  Quartz2Demo
//
//  Created by Duomai on 15/9/16.
//  Copyright (c) 2015年 zpf. All rights reserved.
//

#import "LineView.h"

@interface LineView()
@property(nonatomic,weak)UILabel * label;
@end

@implementation LineView

-(UILabel*)label{
    
    if (_label == nil) {
        
        UILabel * label  = [[UILabel alloc] init];
        _label = label;
    }
    return _label;
}

- (void)drawRect:(CGRect)rect {
    [self drawLine];
    
   // [self drawLineSecond];
}

-(void)drawLine{
    [[UIColor purpleColor] set];
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    UIBezierPath * bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint:CGPointMake(10, 10)];
    [bezierPath addLineToPoint:CGPointMake(100, 100)];
    [bezierPath addLineToPoint:CGPointMake(240, 10)];
    [bezierPath closePath];
    CGContextAddPath(currentContext, bezierPath.CGPath);
    //CGContextFillPath(currentContext);
    
    CGContextDrawPath(currentContext, kCGPathFillStroke);
}

-(void)drawLineSecond{

    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    
    
    UIBezierPath * path = [UIBezierPath bezierPath];

    [path moveToPoint:CGPointMake(100, 100)];
    
    [path addLineToPoint:CGPointMake(200, 100)];
    
    
    UIBezierPath * other = [UIBezierPath bezierPath];
    [other moveToPoint:CGPointMake(20, 20)];
    [other addLineToPoint:CGPointMake(200, 200)];
    
    
    CGContextSetLineWidth(currentContext, 10);
    CGContextSetLineCap(currentContext, kCGLineCapRound);
    [[UIColor redColor] set];
    
    CGContextAddPath(currentContext, path.CGPath);
    CGContextAddPath(currentContext, other.CGPath);
    
    CGContextStrokePath(currentContext);
}

@end
