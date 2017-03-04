//
//  testViewController.m
//  testStoryBoard
//
//  Created by DENGYEWU on 17/2/13.
//  Copyright © 2017年 DENGYEWU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "testViewController.h"
#import "myViewController.h" //跳转返回的窗口

@implementation testViewController

-(void)viewDidLoad{

    [super viewDidLoad];
    NSLog(@"...从 一个ViewController 跳转 到另外 一个ViewController...");
    
    self.view.backgroundColor =[UIColor whiteColor]; //自定义白色
    
    UILabel *uilabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 100, 200, 100)];
    [uilabel setText:@"testViewController"];
    uilabel.backgroundColor = [UIColor colorWithRed:0 green:1 blue:1 alpha:0.6];
    [self.view addSubview:uilabel];
    
    
    UIButton *uibutton =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    uibutton.frame=CGRectMake(10, 200, 200, 100);
    uibutton.backgroundColor =[UIColor grayColor];
    [uibutton setTitle:@"返回..." forState:UIControlStateNormal];
    
    //按钮事件
    SEL eventHandler =@selector(ToBack);
    [uibutton addTarget:self action:eventHandler forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:uibutton];
    
}

//返回viewController
-(void) ToBack{
    
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"...隐藏视图成功...");
    }];
}

@end
