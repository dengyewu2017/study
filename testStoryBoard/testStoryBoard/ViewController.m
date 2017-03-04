//
//  ViewController.m
//  testStoryBoard
//
//  Created by DENGYEWU on 17/1/17.
//  Copyright © 2017年 DENGYEWU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//加载视图
- (void)viewDidLoad {
    
    [super viewDidLoad];
    //Do any additional setup after loading the view, typically from a nib.
    NSLog(@"==viewDidLoad loading==");
    
    
}

/*
 *@selector()就是取类方法的编号
 *(id)sender参数,表示接受哪个按钮消息
 */




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"===ReceiveMemoryWarning===");
}
 
 
@end
