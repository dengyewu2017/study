//
//  SecondPassValueViewController.m
//  testStoryBoard
//
//  Created by DENGYEWU on 17/2/16.
//  Copyright © 2017年 DENGYEWU. All rights reserved.
//

#import <Foundation/Foundation.h>  //NSArray,NSObject对象
#import "SecondPassValueViewController.h"


@interface SecondPassValueViewController()

@end

@implementation SecondPassValueViewController

@synthesize userEntity;

-(void) viewDidLoad{

    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor grayColor];
    
    //定义name标签
    UILabel *xmlabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 100, 50, 35)];
    [xmlabel setText:@"姓名:"];
    xmlabel.backgroundColor=[UIColor grayColor];
    [self.view addSubview:xmlabel];
    
    //定义textField
    UITextField *xmtextfield=[[UITextField alloc]initWithFrame:CGRectMake(100, 100, 200, 35)];
    xmtextfield.borderStyle = UITextBorderStyleRoundedRect;
    xmtextfield.backgroundColor=[UIColor whiteColor];
    xmtextfield.text = self.userEntity.userName; //传值
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
    xbtextfield.text = self.userEntity.gendar; //传值
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
    agetextfield.text =[NSString stringWithFormat:@"%d",self.userEntity.age];
    [self.view addSubview:agetextfield];
    
}

//内存过低,释放一些不需要的视图调用
-(void) viewDidUnload{
    
}

-(void)backButton{
    
    [self dismissModalViewControllerAnimated:YES];
}

@end
