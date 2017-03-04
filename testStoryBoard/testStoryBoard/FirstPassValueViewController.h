//
//  PassValueViewController.h
//  testStoryBoard
//
//  Created by DENGYEWU on 17/2/14.
//  Copyright © 2017年 DENGYEWU. All rights reserved.
//  作用是各个ViewController的值传递.
//  IBAction(), IBOutlet
//

#import <UIKit/UIKit.h>
#import "PassValueDelegate.h"

@interface FirstPassValueViewController : UIViewController
{
    NSString *userName;
    NSString *genDar;
    int age;
}

@property(assign,nonatomic) NSString *userName;
@property(assign,nonatomic) NSString *genDar;
@property(assign,nonatomic) int age;

@end


