//
//  ViewController.m
//  Quartz2Demo
//
//  Created by Duomai on 15/9/16.
//  Copyright (c) 2015年 zpf. All rights reserved.
//

#import "ViewController.h"
#import "CircleProgress.h"
#import "UIImage+WalterMarkImage.h"
#import "UIImage+CircleImage.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet CircleProgress *progerssView;
@property (weak, nonatomic) IBOutlet UIImageView *WalterMarkImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
   //self.WalterMarkImageView.image = [UIImage imageFrom:@"img" markText:@"我是水印"];
    self.WalterMarkImageView.image = [UIImage circleImageWithName:@"img"];
}



- (IBAction)changeValue:(UISlider *)sender {
    
    self.progerssView.progress  = sender.value;
    NSLog(@"%f",sender.value);
}


@end
