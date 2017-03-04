//
//  testViewController.m
//  testStoryBoard
//
//  Created by DENGYEWU on 17/2/10.
//  Copyright © 2017年 DENGYEWU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "myViewController.h"
#import "testViewController.h"  //跳转的viewController
#import "tableViewController.h"
#import "FirstpassValueViewController.h"
#import "AFNetworking.h"
#import "OCMock.h"

@implementation myViewController

-(void)viewDidLoad{

    [super viewDidLoad];
    NSLog(@" ..this is a myViewController..");
    self.view.backgroundColor = [UIColor whiteColor];
    
    //创建view
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(10, 10, 200, 100)];
    view.backgroundColor =[UIColor colorWithRed:1 green:0 blue:0 alpha:0.6];
    [self.view addSubview:view];
    
    //创建UIImageView
    UIImage *image = [UIImage imageNamed:@"image.png"];
    UIImageView *imageView =[[UIImageView alloc]initWithImage:image];
    imageView.frame=CGRectMake(10, 120, 200, 100);
    imageView.backgroundColor =[UIColor colorWithRed:0 green:1 blue:1 alpha:0.6];
    imageView.layer.cornerRadius = 8;
    imageView.layer.masksToBounds=YES;
    [self.view addSubview:imageView];
    
    //创建UILabel
    UILabel *label =[[UILabel alloc]initWithFrame:CGRectMake(10, 240, 200, 100)];
    [label setText:@"Label"];
    label.backgroundColor =[UIColor colorWithRed:0 green:0 blue:1 alpha:0.6];
    [self.view addSubview:label];
    
    //创建myViewButton
    UIButton *myViewButton =[UIButton buttonWithType:UIButtonTypeRoundedRect];
     myViewButton.frame = CGRectMake(10, 350, 100, 50);
     myViewButton.backgroundColor =[UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    [myViewButton setTitle:@"myView" forState:UIControlStateNormal];
    
    //myViewButton按钮上增加事件
     SEL eventHandler = @selector(clickButton1);
    [myViewButton addTarget:self action:eventHandler forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myViewButton];
    
    //创建testViewUIButton
    UIButton *testViewButton =[UIButton buttonWithType:UIButtonTypeCustom];
    testViewButton.frame = CGRectMake(200, 350, 100, 50);
    testViewButton.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    [testViewButton setTitle:@"testView" forState:UIControlStateNormal];
    SEL eventHandler2 = @selector(clickButtonJump);
    [testViewButton addTarget:self action:eventHandler2 forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testViewButton];
    
    //创建tableViewButton,按钮上增加事件
    UIButton *tableViewButton =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    tableViewButton.frame = CGRectMake(10, 450, 100, 50);
    tableViewButton.backgroundColor =[UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    [tableViewButton setTitle:@"tableView" forState:UIControlStateNormal];
    SEL eventhandler3 = @selector(ClickJumpToTable);
    [tableViewButton addTarget:self action:eventhandler3 forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tableViewButton];
    
    //创建FirstPassValueButton
    UIButton *firstPassValueButton =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    firstPassValueButton.frame=CGRectMake(200, 450, 100, 50);
    firstPassValueButton.backgroundColor=[UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    [firstPassValueButton setTitle:@"PassValue" forState:UIControlStateNormal];
    SEL eventhandler4 =@selector(clickPassValue);
    [firstPassValueButton addTarget:self action:eventhandler4 forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:firstPassValueButton];
    
    //执行方法
    //[self performSelector:@selector(TotalSum)];
}

     //该函数作用是"传值
-(void) clickPassValue{
    
    FirstPassValueViewController *firstpassvalueviewcontroller=[[FirstPassValueViewController alloc]init];
    [self presentModalViewController:firstpassvalueviewcontroller animated:YES];
    //viewController的跳转
}

-(void) clickButton1{
    
    NSLog(@"Button Event Start!");
    
   //弹窗控件 UIAlertView
   UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"警告" message:@"账号或者密码错误" delegate:nil cancelButtonTitle:@"好的" otherButtonTitles:nil,nil];
    [alert show];
}

   //跳转到viewController
-(void) clickButtonJump{
    
    testViewController *testviewcontroller = [[testViewController alloc]init];
    [self presentModalViewController:testviewcontroller animated:YES];
}

   //跳转到viewController
-(void) ClickJumpToTable{
    
    tableViewController *tableviewcontroller = [[tableViewController alloc]init];
    [self presentModalViewController:tableviewcontroller animated:YES];
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    NSLog(@"===ReceiveMemoryWarning===");
}

   //发送请求
-(void) sendRequest{
  
    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
    
}

/*
-(void)TotalSum{

    int x = 3;
    int y = 4;
    float sum =x+y;
    NSLog(@"总的和： %f",sum);
} */

@end
