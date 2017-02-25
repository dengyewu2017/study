//
//  ViewController.m
//  NotificationDemo
//
//  Created by DENGYEWU on 17/2/24.
//  Copyright © 2017年 DENGYEWU. All rights reserved.
//

#import "ViewController.h"
#import "NotificationObject.h"
#import "NetWorkSend.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //主动发送消息, NotificationCenter观察者接收消息
    NotificationObject *notification = [[NotificationObject alloc]init]; //创建通知对象
    NetWorkSend *networksend = [[NetWorkSend alloc]init];   //创建通知对象
    
   [[NSNotificationCenter defaultCenter]postNotificationName:@"test" object:notification];
   [[NSNotificationCenter defaultCenter]postNotificationName:@"SendRequest" object:networksend];
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
