//
//  PassValueDelegate.h
//  testStoryBoard
//
//  Created by DENGYEWU on 17/2/23.
//  Copyright © 2017年 DENGYEWU. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UserEntity;
@protocol PassValueDelegate <NSObject>

-(void)passValue:(UserEntity *)value; //参数

@end
