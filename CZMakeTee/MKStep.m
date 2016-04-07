//
//  MKStep.m
//  CZMakeTee
//
//  Created by Cui on 16/4/6.
//  Copyright © 2016年 Cui. All rights reserved.
//

#import "MKStep.h"

@import FMDB;


@implementation MKStep

- (instancetype)initWithDuringInt:(NSInteger) during {
    if (self = [super init]) {
        _pid = -1;
        _sid = -1;
        _time = during;
    }
    return self;
}

- (instancetype)initWithRs:(FMResultSet*)rs {
    if (self = [super init]) {
        _pid = [rs intForColumn:@"pid"];
        _sid = [rs intForColumn:@"_id"];
        _time = [rs intForColumn:@"time"];
    }
    return self;
}



@end
