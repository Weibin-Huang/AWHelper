//
//  ViewController.m
//  AWHelper_Demo
//
//  Created by AlanWong on 15/10/5.
//  Copyright © 2015年 AlanWong. All rights reserved.
//

#import "ViewController.h"
#import "AWHelper.h"
@interface ViewController ()
@property (nonatomic,strong) UIView * testView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _testView = [[UIView alloc]init];
    _testView.size = CGSizeMake(100, 100);
    _testView.backgroundColor = [UIColor redColor];
    [self.view addSubview:_testView];
    _testView.center = CGPointMake(self.view.width / 2, self.view.height / 2);
    
    [_testView setRoundedCorners:UIRectCornerAllCorners radius:_testView.width /2];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
