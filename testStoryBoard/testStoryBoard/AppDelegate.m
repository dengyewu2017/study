//
//  AppDelegate.m
//  testStoryBoard
//
//  Created by DENGYEWU on 17/1/17.
//  Copyright © 2017年 DENGYEWU. All rights reserved.
//

#import "AppDelegate.h"
#import "myViewController.h"


@interface AppDelegate ()
  
@end 


@implementation AppDelegate

//自带系统方法
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
     //Override point for customization after application launch.
    
     /* 1.加载Storyboard的名字 */
     /*
      UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
     */
    
     /* 2.加载storyboard里的控制器 */
     /*
      UIViewController *vc =[storyboard instantiateInitialViewController];
     */
    
     /*设置根控制器*/
     /*a.实例化一个window窗口*/
      /*
       self.window.rootViewController = vc; //把Storyboard加载到 window窗口上
      */
    
    //创建一个windows实例 [UIScreen mainScreen]bounds 屏幕的整个空间
    //self.window =[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
     
    //self.window =[[UIWindow alloc]initWithFrame:CGRectMake(300,300, 300, 300)];//自定义windows
    //self.window.backgroundColor = [UIColor whiteColor];
    //[self.window makeKeyAndVisible];
    
    
      //vc.view.backgroundColor = [UIColor grayColor];
       //[UIScreen mainScreen]bounds 是屏幕大小,启动图决定
      self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
      myViewController *myviewcontroller = [[myViewController alloc]init];
    
      self.window.rootViewController = myviewcontroller;  //ui界面
      [self.window makeKeyAndVisible];
    
     /*b.实例化一个UIView */
     /*
     UIView *myView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 500, 900)];
     myView.backgroundColor = [UIColor whiteColor]; //背景颜色为 红色
     [self.window addSubview:myView]; //把myView添加到self.window上
     [myView setOpaque:true];
     */
     return YES;
}

/*
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
} */





@end
