//
//  MKStep.h
//  CZMakeTee
//
//  Created by Cui on 16/4/6.
//  Copyright © 2016年 Cui. All rights reserved.
// 111

#import <Foundation/Foundation.h>

@class FMResultSet;
@interface MKStep : NSObject
@property NSInteger sid;
@property NSInteger pid;
@property NSInteger time;
- (instancetype)initWithDuringInt: (NSInteger) during;
- (instancetype)initWithRs:(FMResultSet*)rs;
@end
