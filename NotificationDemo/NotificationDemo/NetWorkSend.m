//
//  NetWorkSend.m
//  NotificationDemo
//
//  Created by DENGYEWU on 17/2/25.
//  Copyright © 2017年 DENGYEWU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NetWorkSend.h"

@implementation NetWorkSend

-(id)init{
      
    if (self=[super init]) {
        
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(SendRequest) name:@"SendRequest" object:nil];
    }
    return self;
}

//执行通知
-(void)SendRequest{

    NSLog(@" ....notice....");
    
    
    
}

@end
