//
//  MKEncyInfo.h
//  CZMakeTee
//
//  Created by Cui on 16/4/8.
//  Copyright © 2016年 Cui. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FMResultSet;

@interface MKEncyInfo : NSObject

@property NSInteger eid;
@property NSString *title;
@property NSString *thumbnail;
@property NSString *detail;
@property NSString *author;
@property NSString *authorUrl;
@property NSString *url;
@property BOOL isEncy;

@end
