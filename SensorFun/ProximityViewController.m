//
//  AcceleratorViewController.m
//  SensorFun
//
//  Created by yxhe on 16/11/18.
//  Copyright © 2016年 tashaxing. All rights reserved.
//

#import "ProximityViewController.h"

@interface ProximityViewController ()

@end

@implementation ProximityViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"距离感应器";
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 开启
//    [UIApplication sharedApplication].proximitySensingEnabled = YES; // 这个api也可以，现在不建议用
    [UIDevice currentDevice].proximityMonitoringEnabled = YES;
    
    // 监听
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(stateChange)
                                                 name:UIDeviceProximityStateDidChangeNotification
                                               object:nil];
}

- (void)stateChange
{
    if ([UIDevice currentDevice].proximityState)
    {
        NSLog(@"物体靠近");
    }
    else
    {
        NSLog(@"物体离开");
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
