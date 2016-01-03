//
//  XFWebTableViewController.m
//  UnfixHight_Cell_Demo
//
//  Created by apple on 16/1/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "XFWebTableViewController.h"
#import "XFWebTableViewCell.h"
#import "XFWebModel.h"
#import "XFWebFrame.h"

@interface XFWebTableViewController ()

/**
 *  微博单条数据，包含信息和frame
 */
@property(nonatomic, strong) NSMutableArray *webFrames;

@end

@implementation XFWebTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

/**
 *  懒加载web数据
 *
 *  @return 微博数据
 */
- (NSMutableArray *)webFrames
{
    if (!_webFrames) {
        _webFrames = [XFWebFrame webFrames];
    }
    
    return _webFrames;
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.webFrames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    // 将微博信息与其布局信息传递至自定义cell
    XFWebTableViewCell *cell = [XFWebTableViewCell webCellWithTableView:tableView];
    cell.webFrame = self.webFrames[indexPath.row];
    return cell;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //高度已经计算完成，直接使用
    XFWebFrame *frame = self.webFrames[indexPath.row];
    return frame.cellHight;
}

@end
