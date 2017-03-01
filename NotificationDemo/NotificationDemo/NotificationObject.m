//
//  NotificationObject.m
//  NotificationDemo
//
//  Created by DENGYEWU on 17/2/24.
//  Copyright © 2017年 DENGYEWU. All rights reserved.
//    postNotificationName 发送通知
//    监听者 addObserver
//    发送通知后,所有监听者都能收到

#import <Foundation/Foundation.h>
#import "NotificationObject.h"

@implementation NotificationObject

-(id)init{
    
    if (self =[super init]) {
        
      [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(test) name:@"test" object:nil];
    }
    return self;
}

-(void)test{

    NSLog(@" ...NotificationObject类 test接收到通知...");
}

@end
