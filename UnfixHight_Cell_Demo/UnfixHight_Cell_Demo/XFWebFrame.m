//
//  XFWebFrame.m
//  UnfixHight_Cell_Demo
//
//  Created by apple on 15/12/28.
//  Copyright © 2015年 apple. All rights reserved.
//

#import "XFWebFrame.h"
#import "XFWebModel.h"

@interface XFWebFrame()
/**
 *  计算布局
 *
 *  @param webInfo 计算每一行微博的布局
 */
- (void)calculateFrameWithInfo:(XFWebModel *)webInfo;

@end

@implementation XFWebFrame


/**
 *  类构造方法
 *
 *  @return 返回每一行微博数据和布局列表
 */
+(NSMutableArray *)webFrames
{
    // 加载数据
    NSArray *webInfos = [XFWebModel webInfos];
    NSMutableArray *webFrames = [NSMutableArray array];
    XFWebFrame *tempWebFrame = nil;
    
    // 构造每一行的布局信息
    for (XFWebModel *tmpWebInfo in webInfos) {
        tempWebFrame = [[self alloc] init];
        tempWebFrame.webInfo = tmpWebInfo;
        [webFrames addObject:tempWebFrame];
    }
    
    return webFrames;
}

/**
 *  记载数据并计算布局
 *
 *  @param webInfo 记载数据并计算布局
 */
-(void) setWebInfo:(XFWebModel *)webInfo{
    // 数据设定
    _webInfo = webInfo;
    
    // 开始计算布局
    [self calculateFrameWithInfo:webInfo];
}

/**
 *  计算布局
 *
 *  @param webInfo 计算每一行微博的布局
 */
- (void)calculateFrameWithInfo:(XFWebModel *)webInfo
{
    CGFloat margin = 10;
    
    // 头像
    CGFloat picW = 30;
    CGFloat picH = 30;
    CGFloat picX = margin;
    CGFloat picY = margin;
    _picFrame = CGRectMake(picX, picY, picW, picH);
    
    // 正文
    CGSize textSize = [self sizeWithText:self.webInfo.content maxSize:CGSizeMake(300, MAXFLOAT) fontSize:XF_TEXT_FONT];
    CGFloat textX = picX;
    CGFloat textY = CGRectGetMaxY(self.picFrame) + margin;
    _textFrame = CGRectMake(textX, textY, textSize.width, textSize.height);
    
    // 计算行高
    _cellHight = CGRectGetMaxY(self.textFrame) + margin;
    
}

// 计算文本的size
-(CGSize)sizeWithText:(NSString *)text maxSize:(CGSize)maxSize fontSize:(CGFloat)fontSize
{
    CGSize textSize = [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:fontSize]} context:nil].size;
    
    return textSize;
}

@end
