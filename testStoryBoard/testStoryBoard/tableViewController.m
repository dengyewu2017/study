//
//  tableViewController.m
//  testStoryBoard
//
//  Created by DENGYEWU on 17/2/13.
//  Copyright © 2017年 DENGYEWU. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "tableViewController.h"

@implementation tableViewController

@synthesize tableview;

- (void) viewDidLoad{
    
     [super viewDidLoad];
     NSLog(@".....tableView初始化中.....");
    
     tableview = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
    
      tableview.delegate = self;   //调用delegate,委托传值
      tableview.dataSource =self;  //
    
     [self.view addSubview:tableview];
      
}

/*这个函数显示tableview的组数*/
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

/*这个函数是指定显示多少行数*/
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
 
    return 10;
}

/*显示多少内容字数*/
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
   
    //定义静态字符串,防止重复
    static NSString *CellIdentifier = @"Cell";
    
    //定义cell的复用性,处理大量数据时减少内存开销
    UITableViewCell *cell=[tableview dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(cell ==nil){
    
       cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    return cell;
}


@end
