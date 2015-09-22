//
//  CircleProgress.m
//  Quartz2Demo
//
//  Created by Duomai on 15/9/16.
//  Copyright (c) 2015年 zpf. All rights reserved.
//

#import "CircleProgress.h"

@implementation CircleProgress

-(void)setProgress:(float)progress{
    _progress = progress;
    
    self.title.text = [NSString stringWithFormat:@"%.2f%%",progress*100];
    
    [self setNeedsDisplay];
}


- (void)drawRect:(CGRect)rect {

    CGContextRef currtentContext = UIGraphicsGetCurrentContext();
    
    CGPoint center = CGPointMake(self.bounds.size.width * 0.5, self.bounds.size.height * 0.5);
    CGFloat radius = self.bounds.size.width * 0.5 - 10;
    CGFloat start = - M_PI_2;
    CGFloat end =  - M_PI_2 + self.progress * M_PI * 2 ;
    
    UIBezierPath * bezierPath = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:start endAngle:end clockwise:YES];
    
    CGContextAddPath(currtentContext, bezierPath.CGPath);
    
    CGContextStrokePath(currtentContext);
    
    
}


@end
