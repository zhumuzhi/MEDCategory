//
//  ViewController.m
//  MEDCategoryDemo
//
//  Created by 朱慕之 on 2018/4/3.
//  Copyright © 2018年 zhumuzhi. All rights reserved.
//

#import "ViewController.h"

#import "UIView+MED.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *testView = [[UIView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 300)];
    
    NSLog(@"%f,%f,%f,%f",testView.width, testView.x, testView.height, testView.centerX);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
