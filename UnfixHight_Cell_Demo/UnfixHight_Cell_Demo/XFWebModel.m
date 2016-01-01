//
//  XFWebModel.m
//  UnfixHight_Cell_Demo
//
//  Created by apple on 15/12/25.
//  Copyright © 2015年 apple. All rights reserved.
//

#import "XFWebModel.h"

@implementation XFWebModel

-(instancetype) initWithDic:(NSDictionary *)dic
{
    if (self = [super init])
    {
        // 利用字典来进行属性初始化
        [self setValuesForKeysWithDictionary:dic];
    }
    
    return self;
}

+(instancetype) webInfoWithDic:(NSDictionary *)dic;
{
    return [[self alloc] initWithDic:dic];
}

+(NSArray *) webInfos
{
    // 加载plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"web" ofType:@"plist"];
    NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
    
    // 字典转模型
    NSMutableArray *tempArray = [NSMutableArray array];
    for (NSDictionary *dic in dictArray)
    {
        XFWebModel *good = [XFWebModel webInfoWithDic:dic];
        [tempArray addObject:good];
    }
    return tempArray;
}

@end
