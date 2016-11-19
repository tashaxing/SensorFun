//
//  CoreMotionViewController.m
//  SensorFun
//
//  Created by yxhe on 16/11/19.
//  Copyright © 2016年 tashaxing. All rights reserved.
//

#import <CoreMotion/CoreMotion.h>
#import "CoreMotionViewController.h"

@interface CoreMotionViewController ()
{
    CMMotionManager *motionManager;
}
@end

@implementation CoreMotionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"coremotion管理器";
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 运动管理器，加速计，磁力计，陀螺仪等
    motionManager = [[CMMotionManager alloc] init];
    if ([motionManager isAccelerometerAvailable] &&
        [motionManager isGyroAvailable] &&
        [motionManager isMagnetometerAvailable])
    {
        // 开始采样pull方法(也可以用异步线程block的形式，使用的是开始采样和获取采样的push方法)
        [motionManager startAccelerometerUpdates];
        [motionManager startGyroUpdates];
        [motionManager startMagnetometerUpdates];
    }
    else
    {
        NSLog(@"coremotion 不可用");
    }
}

// 获取传感器更新（pull方法）
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    // 其实是随时可以获取更新，这里简单的已触摸为例
    CMAcceleration acceleration = motionManager.accelerometerData.acceleration;
    NSLog(@"加速计 x:%f y:%f z:%f", acceleration.x, acceleration.y, acceleration.z);
    
    CMRotationRate rotationRate = motionManager.gyroData.rotationRate;
    NSLog(@"陀螺仪 x:%f y:%f z:%f", rotationRate.x, rotationRate.y, rotationRate.z);
    
    CMMagneticField magneticField = motionManager.magnetometerData.magneticField;
    NSLog(@"磁力计 x:%f y:%f z:%f", magneticField.x, magneticField.y, magneticField.z);
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
