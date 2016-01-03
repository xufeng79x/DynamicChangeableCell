//
//  XFWebModel.m
//  UnfixHight_Cell_Demo
//
//  Created by apple on 15/12/25.
//  Copyright © 2015年 apple. All rights reserved.
//

#import "XFWebModel.h"

@implementation XFWebModel

/**
 *  初始化方法
 *
 *  @param dic 信息字典数据
 *
 *  @return 每条微博的数据信息
 */
-(instancetype) initWithDic:(NSDictionary *)dic
{
    if (self = [super init])
    {
        // 利用字典来进行属性初始化
        [self setValuesForKeysWithDictionary:dic];
    }
    
    return self;
}

/**
 *  类初始化方法
 *  通过字典数据直接构造模型数据
 *
 *  @param dic 字典数据
 *
 *  @return 每一条微博的数据信息
 */
+(instancetype) webInfoWithDic:(NSDictionary *)dic;
{
    return [[self alloc] initWithDic:dic];
}

/**
 *  获取微博信息列表
 *
 *  @return 微博信息列表
 */
+(NSArray *) webInfos
{
    // 加载plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"web" ofType:@"plist"];
    NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
    
    // 字典转模型
    NSMutableArray *tempArray = [NSMutableArray array];
    for (NSDictionary *dic in dictArray)
    {
        XFWebModel *web = [XFWebModel webInfoWithDic:dic];
        [tempArray addObject:web];
    }
    return tempArray;
}

@end
