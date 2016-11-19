//
//  ShakeViewController.m
//  SensorFun
//
//  Created by yxhe on 16/11/19.
//  Copyright © 2016年 tashaxing. All rights reserved.
//

#import "ShakeViewController.h"

@interface ShakeViewController ()

@end

@implementation ShakeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"摇一摇";
    self.view.backgroundColor = [UIColor whiteColor];
    
}

// 摇一摇代理(傻瓜式接口)
- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSLog(@"开始摇一摇");
}

- (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSLog(@"摇一摇被取消");
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSLog(@"摇一摇停止");
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
