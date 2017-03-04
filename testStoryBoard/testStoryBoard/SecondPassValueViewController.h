//
//  SecondPassValueViewController.h
//  testStoryBoard
//
//  Created by DENGYEWU on 17/2/16.
//  Copyright © 2017年 DENGYEWU. All rights reserved.
//

#import <UIKit/UIKit.h>  //ui控件
#import "UserEntity.h"

@interface SecondPassValueViewController : UIViewController

@property (retain,nonatomic) UserEntity *userEntity;

// -(IBAction)backButton:(id)sender;通过拖动方式的函数定义
-(void)backButton; //定义函数

@end
