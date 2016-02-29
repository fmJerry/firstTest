//
//  ViewController.m
//  fitHeightTest
//
//  Created by lanou3g on 16/2/27.
//  Copyright © 2016年 lanou3g. All rights reserved.
//

#import "ViewController.h"
#import "CustomTableViewCell.h"
@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong)UITableView *tableview;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.tableview = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    self.tableview.delegate = self;
    self.tableview.dataSource = self;
    [self.view addSubview:self.tableview];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [CustomTableViewCell labelHeightWithSting:@"sdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdf"];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"cell_id";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil)
    {
        cell = [[CustomTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
        
    }
    cell.label.text = @"sdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdf";
    CGRect rect = cell.label.frame;
    rect.size.height = [CustomTableViewCell labelHeightWithSting:@"sdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdfsdfsdkflsdklfjlsdkjfalkflkshdflksdf"];
    cell.label.frame = rect;
    return cell;
    
}


@end
