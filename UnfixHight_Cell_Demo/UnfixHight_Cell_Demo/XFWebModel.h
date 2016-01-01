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
@property (nonatomic, strong) NSString *photo;
@property (nonatomic, strong) NSString *content;

-(instancetype) initWithDic:(NSDictionary *)dic;
+(instancetype) webInfoWithDic:(NSDictionary *)dic;

+(NSArray *) webInfos;


@end
