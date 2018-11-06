//
//  ViewController.m
//  simple_Router
//
//  Created by sunrise on 2018/11/3.
//  Copyright © 2018 sunriseos. All rights reserved.
//

#import "ViewController.h"
#import "SR_BaseButton.h"
#import "PushPageAction.h"

@interface ViewController () <UITableViewDelegate, SR_BaseButtonDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 协议约定
//      apphref: 跳转app原生页面
//      http: 跳转
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    SR_BaseButton *btn = [[SR_BaseButton alloc] initWithFrame:CGRectMake(50, 200, 100, 30)];
    [btn setTitle:@"点我啊" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    btn.delegate = self;
    btn.delegate = self;
    btn.hrefInfo = @"apphref://MemberController?test=44&aa=44";
    [self.view addSubview:btn];
    
    NSLog(@"%@", self.receiveParams);
    
}

#pragma mark - delegate
- (void)srBaseButtonDidClick:(SR_BaseButton *)button{
    NSLog(@"%@", button.hrefInfo);
    [self appRouterPageLink:button.hrefInfo];
}


@end
