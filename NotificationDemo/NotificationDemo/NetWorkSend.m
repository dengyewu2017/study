//
//  NetWorkSend.m
//  NotificationDemo
//
//  Created by DENGYEWU on 17/2/25.
//  Copyright © 2017年 DENGYEWU. All rights reserved.
//   [NSURLSession sharedSession]获取全局的NSURLSession对象,共用一个全局session.
//   NSURLSessionUploadTask  ->NSURLSessionDataTask->NSURLSessioinTask
//   NSURLSessionDownloadTask->NSURLSessionTask 默认下载到tmp文件夹.
//  http://www.cnblogs.com/ldnh/p/5304279.html
//

#import <Foundation/Foundation.h>
#import "NetWorkSend.h"
#import "AFNetworking.h"

@implementation NetWorkSend

//重写父类的init方法
-(id)init{
      
    if (self=[super init]) {
        
        [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(SendRequest) name:@"SendRequest" object:nil];
    }
    return self;
}

//执行通知
-(void)SendRequest{
    
  NSLog(@" ...NetWorkSend类 SendRequest...");
}

    //发送get请求
-(void)sendGetRequest{
    
    NSLog(@"...sendGetRequest...");
    //1.创建一个网络路径
    NSURL *url =[NSURL URLWithString:@"https://www.52shangou.com/api/locate.do?ak=aMdi6T4a2kA%3D&dt=1&lat=30.294993&lng=120.076162&md=1&nlid=0&pc=zx_1&sn=1f18b007e4ba2192fb0cc3f6ddd3c7b8&tsid=50D66E38-0948-4856-B3E1-CCD8DA953075"];
    
    //2.获得会话对象
    NSURLSession *session =[NSURLSession sharedSession];
    
    //3.根据会话对象,创建一个Task任务: [session dataTaskWithRequest]方式发请求.
    NSURLSessionDataTask *sessionDataTask=[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:(NSJSONReadingMutableLeaves) error:nil];
        
        NSLog(@"%@ 返回数据:", [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding]);
        
        NSLog(@"%@ 请求返回:",response);
        NSLog(@"%@ 错误返回: ",error);
        
    }];
    //最后一步,执行任务(resume是继续执行)
    [sessionDataTask resume];
}

   //发送post请求
-(void)sendPostRequest{
    
    NSLog(@"...sendPostRequest...");
    
    NSURL *url =[NSURL URLWithString:@"https://www.52shangou.com/api/locate.do?ak=aMdi6T4a2kA%3D&dt=1&lat=30.294993&lng=120.076162&md=1&nlid=0&pc=zx_1&sn=1f18b007e4ba2192fb0cc3f6ddd3c7b8&tsid=50D66E38-0948-4856-B3E1-CCD8DA953075"];
    NSMutableURLRequest *request =[NSMutableURLRequest requestWithURL:url];
    
    //设置请求方法
    request.HTTPMethod =@"POST";
    
    //2.获得会话对象
    NSURLSession *session =[NSURLSession sharedSession];
    
    //3.发送请求
    NSURLSessionDataTask *sessionDataTask =[session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSLog(@"%@ 返回数据:", [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding]);
        NSLog(@"%@ 请求返回:", response);
        NSLog(@"%@ 错误返回: ",error);
    }];
    
    [sessionDataTask resume]; //发送POST请求.
}

//下载文件
-(void)DownLoadFile{

    NSLog(@"...FileDown下载...");
    
    NSURL *url =[NSURL URLWithString:[@"" stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];  //下载文件url
    
    NSURLSession *session = [NSURLSession sharedSession]; //获取session对象
    
    NSURLSessionDownloadTask *downloadTask =[session downloadTaskWithURL:url completionHandler:^(NSURL * _Nullable location, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
      //location下载到沙盒的地址
        NSLog(@"下载完成%@",location);
        
      //response响应信息中的文件资源名
        NSString *cachesPath =[[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)lastObject] stringByAppendingPathComponent:response.suggestedFilename];
        
        NSLog(@"缓存地址 %@",cachesPath);
        
        //获取文件管理器
        NSFileManager *mgr = [NSFileManager defaultManager];
        
        //将临时文件移动缓存目录下
        [mgr moveItemAtURL:location toURL:[NSURL fileURLWithPath:cachesPath] error:NULL];
        
    }];
    
}



@end
