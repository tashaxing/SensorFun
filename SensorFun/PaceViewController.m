//
//  PaceViewController.m
//  SensorFun
//
//  Created by yxhe on 16/11/19.
//  Copyright © 2016年 tashaxing. All rights reserved.
//

#import <CoreMotion/CoreMotion.h>
#import "PaceViewController.h"


@interface PaceViewController ()

@end

@implementation PaceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"计步器";
    self.view.backgroundColor = [UIColor whiteColor];
    
//    // 获取计步器开始计步（可以设置从什么时候开始计步），好像在ios10上用不了
//    if ([CMPedometer isStepCountingAvailable])
//    {
//        CMPedometer *stepCounter = [[CMPedometer alloc] init];
//        [stepCounter startPedometerUpdatesFromDate:[NSDate date]
//                                       withHandler:^(CMPedometerData * _Nullable pedometerData, NSError * _Nullable error) {
//                                           if (error)
//                                           {
//                                               return;
//                                           }
//                                           
//                                           NSLog(@"steps:%@", pedometerData.numberOfSteps);
//                                       }];
//    }
//    else
//    {
//        NSLog(@"计步器不可用");
//    }

    

    // ios8过期的方法（这个可以用）
    CMStepCounter *stepCounter = [[CMStepCounter alloc] init];
    
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    [stepCounter startStepCountingUpdatesToQueue:queue
                                        updateOn:2 // 刷新间隔步数
                                     withHandler:^(NSInteger numberOfSteps, NSDate * _Nonnull timestamp, NSError * _Nullable error) {
                                         
                                         if (error)
                                             return;
                                         
                                         // 如果要刷新ui请在主线程
                                         NSLog(@"steps: %ld", numberOfSteps);
                                     }];
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
