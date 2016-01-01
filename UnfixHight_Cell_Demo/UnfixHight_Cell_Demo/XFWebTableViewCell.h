//
//  XFWebTableViewCell.h
//  UnfixHight_Cell_Demo
//
//  Created by apple on 16/1/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
@class XFWebFrame;

@interface XFWebTableViewCell : UITableViewCell
@property(nonatomic,strong) XFWebFrame *webFrame;

/**
 *  创建cell
 *
 *  @param tableView 宿主table
 *
 *  @return cell
 */
+(instancetype) webCellWithTableView:(UITableView *)tableView;
@end
