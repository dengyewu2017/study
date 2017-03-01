//
//  NetworkSend.h
//  NotificationDemo
//
//  Created by DENGYEWU on 17/2/25.
//  Copyright © 2017年 DENGYEWU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NetWorkSend : NSObject

-(void)SendRequest;    //notification通知的函数
-(void)sendGetRequest; //get请求
-(void)sendPostRequest; //post请求
-(void)DownLoadFile;    //下载文件
-(void)URLSessionDelegate; 

@end
