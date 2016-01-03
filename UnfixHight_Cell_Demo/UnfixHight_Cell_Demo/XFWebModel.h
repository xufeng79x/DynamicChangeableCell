//
//  XFWebModel.h
//  UnfixHight_Cell_Demo
//
//  Created by apple on 15/12/25.
//  Copyright © 2015年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  plist中内容模型
 *  用户头像名称，内容和位置等
 */
@interface XFWebModel : NSObject

/**
 *  头像照片名称
 */
@property (nonatomic, strong) NSString *photo;

/**
 *  微博内容
 */
@property (nonatomic, strong) NSString *content;

/**
 *  初始化方法
 *
 *  @param dic 信息字典数据
 *
 *  @return 每条微博的数据信息
 */
-(instancetype) initWithDic:(NSDictionary *)dic;

/**
 *  类初始化方法
 *  通过字典数据直接构造模型数据
 *
 *  @param dic 字典数据
 *
 *  @return 每一条微博的数据信息
 */
+(instancetype) webInfoWithDic:(NSDictionary *)dic;

/**
 *  获取微博信息列表
 *
 *  @return 微博信息列表
 */
+(NSArray *) webInfos;


@end
