//
//  UserEntity.h
//  testStoryBoard
//
//  Created by DENGYEWU on 17/2/14.
//  Copyright © 2017年 DENGYEWU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

/*实体类的定义*/
@interface UserEntity:NSObject
{
   NSString *userName;
   NSString *gendar;
   int age;
}

@property(nonatomic,retain) NSString *userName;
@property(nonatomic,retain) NSString *gendar;
@property(assign) int age;

@end
