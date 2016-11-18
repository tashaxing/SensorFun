//
//  ViewController.m
//  SensorFun
//
//  Created by yxhe on 16/11/18.
//  Copyright © 2016年 tashaxing. All rights reserved.
//

// ---- 调各种传感器 ---- //

#import "ViewController.h"
#import "AcceleratorViewController.h"

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
    AcceleratorViewController *vc = [[AcceleratorViewController alloc] init];
    [self.navigationController pushViewController:<#(nonnull UIViewController *)#> animated:<#(BOOL)#>]
}

// 进加速感应器
- (IBAction)btn2:(id)sender
{
    
}

// 进入coremotion
- (IBAction)btn3:(id)sender
{
}

// 进入摇一摇
- (IBAction)btn4:(id)sender
{
}

// 进入计步器
- (IBAction)btn5:(id)sender
{
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
