//
//  ViewController.m
//  SensorFun
//
//  Created by yxhe on 16/11/18.
//  Copyright © 2016年 tashaxing. All rights reserved.
//

// ---- 调各种传感器 ---- //

#import "ViewController.h"
#import "ProximityViewController.h"
#import "AcceleratorViewController.h"
#import "CoreMotionViewController.h"
#import "ShakeViewController.h"
#import "PaceViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

// 进距离感应器
- (IBAction)btn1:(id)sender
{
    ProximityViewController *vc = [[ProximityViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

// 进加速感应器
- (IBAction)btn2:(id)sender
{
    AcceleratorViewController *vc = [[AcceleratorViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

// 进入coremotion
- (IBAction)btn3:(id)sender
{
    CoreMotionViewController *vc = [[CoreMotionViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

// 进入摇一摇
- (IBAction)btn4:(id)sender
{
    ShakeViewController *vc = [[ShakeViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

// 进入计步器
- (IBAction)btn5:(id)sender
{
    PaceViewController *vc = [[PaceViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
