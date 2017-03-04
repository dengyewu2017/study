//
//  tableViewController.h
//  testStoryBoard
//
//  Created by DENGYEWU on 17/2/13.
//  Copyright © 2017年 DENGYEWU. All rights reserved.
//

#import <UIKit/UIKit.h>

//这表示这个类实现UITableViewDataSource,UITableViewDelegate接口.
@interface tableViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property(strong,nonatomic) UITableView *tableview;

@end
