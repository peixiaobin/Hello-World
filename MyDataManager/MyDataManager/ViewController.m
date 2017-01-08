//
//  ViewController.m
//  MyDataManager
//
//  Created by peixiaobin on 2017/1/8.
//  Copyright © 2017年 peixiaobin. All rights reserved.
//

#import "ViewController.h"
#import "MyDataManager.h"
#import "HealthDataManager.h"
#import "SportDataManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MyDataManager *health = [HealthDataManager sharedInstance];
    health.string = @"health";
    
    MyDataManager *sport = [SportDataManager sharedInstance];
    sport.string = @"sport";
    
    MyDataManager *data1 = [MyDataManager sharedInstance];
    data1.string = @"data1";
    
    MyDataManager *data2 = [MyDataManager sharedInstance];
    data2.string = @"data2";
    
    NSLog(@"health = %@, health.string = %@, sport = %@, sport.string = %@",health, health.string, sport, sport.string);
    NSLog(@"data1 = %@, data1.string = %@, data2 = %@, data2.string = %@", data1, data1.string, data2, data2.string);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
