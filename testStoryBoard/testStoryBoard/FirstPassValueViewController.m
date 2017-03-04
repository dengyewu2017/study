//
//  PassValueViewController.m
//  testStoryBoard
//
//  Created by DENGYEWU on 17/2/14.
//  Copyright © 2017年 DENGYEWU. All rights reserved.
//  函数的作用: 实体类 传值
//  传值有2种方式: 1.变量传值 2.delegate传值
//  控件UITextField 不能全局定义,变量传值行不通
//

#import <UIKit/UIKit.h>
#import "FirstPassValueViewController.h"
#import "UserEntity.h"
#import "SecondPassValueViewController.h"

@interface FirstPassValueViewController()

@end

@implementation FirstPassValueViewController

@synthesize userName=_username;
@synthesize genDar=_gendar;
@synthesize age=_age;

-(void) viewDidLoad{

    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor whiteColor]; //view背景灰色
    
    //定义name标签
    UILabel *xmlabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 100, 50, 35)];
    [xmlabel setText:@"姓名:"];
    xmlabel.backgroundColor=[UIColor grayColor];
    [self.view addSubview:xmlabel];
    
    //定义textField
    UITextField *xmtextfield=[[UITextField alloc]initWithFrame:CGRectMake(100, 100, 200, 35)];
    xmtextfield.borderStyle = UITextBorderStyleRoundedRect;
    xmtextfield.backgroundColor=[UIColor whiteColor];
    xmtextfield.placeholder = @"userName";
    [self.view addSubview:xmtextfield];
    
    //定义xb标签
    UILabel *xblabel=[[UILabel alloc]initWithFrame:CGRectMake(10, 200, 50, 35)];
    [xblabel setText:@"性别:"];
    xblabel.backgroundColor=[UIColor grayColor];
    [self.view addSubview:xblabel];
    
    //定义textField
    UITextField *xbtextfield=[[UITextField alloc]initWithFrame:CGRectMake(100, 200, 200, 35)];
    xbtextfield.borderStyle = UITextBorderStyleRoundedRect;
    xbtextfield.backgroundColor =[UIColor whiteColor];
    xbtextfield.placeholder=@"boy or girl";
    [self.view addSubview:xbtextfield];
    
    //定义age标签
    UILabel *agelabel=[[UILabel alloc]initWithFrame:CGRectMake(10, 300, 50, 35)];
    [agelabel setText:@"年龄:"];
    agelabel.backgroundColor=[UIColor grayColor];
    [self.view addSubview:agelabel];
    
    //定义textField
    UITextField *agetextfield=[[UITextField alloc]initWithFrame:CGRectMake(100, 300, 200, 35)];
    agetextfield.borderStyle = UITextBorderStyleRoundedRect;
    agetextfield.backgroundColor =[UIColor whiteColor];
    agetextfield.placeholder=@"age";
    [self.view addSubview:agetextfield];
    
    //定义PassValue按钮
    UIButton *passvaluebutton=[[UIButton alloc]initWithFrame:CGRectMake(10, 400, 80, 50)];
    [passvaluebutton setTitle:@"传值" forState:UIControlStateNormal];
    passvaluebutton.backgroundColor=[UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    SEL eventhandler = @selector(Passvalue);
    [passvaluebutton addTarget:self action:eventhandler forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:passvaluebutton];
}

//通过变量传值
-(void) Passvalue{
    
    NSLog(@"..传值start..");
    
    //构建UserEntity对象
    UserEntity *userEntity=[[UserEntity alloc]init];
    
    SecondPassValueViewController *secondpassvalue=[[SecondPassValueViewController alloc]init];
    
    
    userEntity.userName=@"张山";
    userEntity.gendar=@"男";
    userEntity.age=[NSString stringWithFormat:@"%d",12].intValue; //传int值
    
    secondpassvalue.userEntity =userEntity;//第一个viewController值通过userEntity实例传递。
    //跳转界面
    [self presentModalViewController:secondpassvalue animated:YES];
}

//内存过低,释放一些不需要的视图调用
-(void)viewDidUnload{
    
}



@end
