//
//  AcceleratorViewController.m
//  SensorFun
//
//  Created by yxhe on 16/11/19.
//  Copyright © 2016年 tashaxing. All rights reserved.
//

#import "AcceleratorViewController.h"

@interface AcceleratorViewController ()<UIAccelerometerDelegate>

@end

@implementation AcceleratorViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"加速感应计";
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 这种方法已经不建议使用了
    // 1.获取单例对象
    UIAccelerometer *accelerometer = [UIAccelerometer sharedAccelerometer];
    
    // 2.设置代理
    accelerometer.delegate = self;
    
    // 3.设置采样间隔
    accelerometer.updateInterval = 0.2;
}

// 代理
- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration
{
    NSLog(@"x:%f y:%f z:%f", acceleration.x, acceleration.y, acceleration.z);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
