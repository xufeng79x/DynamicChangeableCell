//
//  XFWebFrame.h
//  UnfixHight_Cell_Demo
//
//  Created by apple on 15/12/28.
//  Copyright © 2015年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

#define XF_TEXT_FONT 15

@class XFWebModel;

@interface XFWebFrame : NSObject


/**
 *  当前cell所需要的高度
 */
@property(nonatomic,assign,readonly) NSInteger cellHight;

// 头像空间的frame
@property(nonatomic,assign,readonly) CGRect picFrame;

// 正文控件frame
@property(nonatomic, assign,readonly) CGRect textFrame;

// 当前cell的数据
@property(nonatomic, strong) XFWebModel *webInfo;


/**
 *  类构造方法，用于返回每一行微博数据和布局列表
 *
 *  @return <#return value description#>
 */
+(NSMutableArray *)webFrames;

@end
