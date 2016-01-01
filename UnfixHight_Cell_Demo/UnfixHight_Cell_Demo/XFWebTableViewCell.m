//
//  XFWebTableViewCell.m
//  UnfixHight_Cell_Demo
//
//  Created by apple on 16/1/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "XFWebTableViewCell.h"
#import "XFWebFrame.h"
#import "XFWebModel.h"

@interface XFWebTableViewCell()
@property(nonatomic, weak) UIImageView *picView;
@property(nonatomic,weak) UILabel *textView;

@end

@implementation XFWebTableViewCell

/**
 *  创建cell
 *
 *  @param tableView 宿主table
 *
 *  @return cell
 */
+(instancetype) webCellWithTableView:(UITableView *)tableView
{
    // 根据可ID进行cell的可重用查找
    static NSString *reuseId = @"webcell";
    XFWebTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId];
    
    if (!cell) {
        cell = [[self alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseId];
    }
    
    return cell;
    
}

/**
 *  重写父类的方法
 *
 *  @param style           重写父类初始化方法并创建子类的控件
 *  @param reuseIdentifier 重用ID
 *
 *  @return cell
 */
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        // 开始创建子控件
        // 头像
        UIImageView *picView = [[UIImageView alloc] init];
        [self.contentView addSubview:picView];
        self.picView = picView;
        
        // 内容
        UILabel *textView = [[UILabel alloc] init];
        textView.font = [UIFont systemFontOfSize:XF_TEXT_FONT];
        textView.numberOfLines = 0;
        [self.contentView addSubview:textView];
        self.textView = textView;
    }
    
    return self;
}

- (void)setWebFrame:(XFWebFrame *)webFrame
{
    _webFrame = webFrame;
    
    // 设置内容
    self.picView.image = [UIImage imageNamed:webFrame.webInfo.photo];
    self.textView.text = webFrame.webInfo.content;
    
    // 设置布局
    self.picView.frame = webFrame.picFrame;
    self.textView.frame = webFrame.textFrame;
}


@end
