//
//  MKEncyInfo.m
//  CZMakeTee
//
//  Created by Cui on 16/4/8.
//  Copyright © 2016年 Cui. All rights reserved.
//

#import "MKEncyInfo.h"
@import FMDB;

@implementation MKEncyInfo

- (instancetype)initWithFMResultSet:(FMResultSet*)rs {
    if (self = [super init]) {
        _eid = [rs intForColumn:@"eid"];
        _title = [rs stringForColumn:@"title"];
        _thumbnail = [rs stringForColumn:@"thumbnail"];
        _detail = [rs stringForColumn:@"description"];
        _author = [rs stringForColumn:@"author"];
        _authorUrl = [rs stringForColumn:@"author_rul"];
        _url = [rs stringForColumn:@"url"];
    }
    return self;
}

@end
