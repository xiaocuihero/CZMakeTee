//
//  MKPlan.m
//  CZMakeTee
//
//  Created by Cui on 16/4/7.
//  Copyright © 2016年 Cui. All rights reserved.
//

#import "MKPlan.h"
#import "MKClass.h"
#import "MKKind.h"
#import "MKBrand.h"
#import "MKStep.h"
#import "JSONjoy.h"
@import FMDB;

@implementation MKPlan
- (instancetype)init
{
    self = [super init];
    if (self) {
        _teaClass = [MKClass new];
        _teaKind = [MKKind new];
        _teaBrand = [MKBrand new];
        _steps = [NSArray<MKStep *> new];
    }
    return self;
}

- (instancetype)initWithFMResultSet:(FMResultSet*)rs
{
    self = [super init];
    if (self) {
        _pid = [rs intForColumn:@"_id"];
        _title = [rs stringForColumn:@"title"];
        _detail = [rs stringForColumn:@"description"];
        _wash = [rs intForColumn:@"wash"] == 1;
        _temperature = [rs intForColumn:@"temperature"];
        _teaRadio = [rs stringForColumn:@"tea+radio"];
        _teaPot = [rs stringForColumn:@"teapot"];
        _used = [rs intForColumn:@"used"];
        _teaDate = [rs intForColumn:@"tea_date"];
        _createDate = [rs intForColumn:@"create_date"];
        _modifyDate = [rs intForColumn:@"modify_date"];
        _likes = [rs intForColumn:@"like_times"];
        _teaClass = [[MKClass alloc] initWithCidInt:[rs intForColumn:@"cid"]];
        _teaKind = [[MKKind alloc] initWithKidInt:[rs intForColumn:@"kid"]];
        _teaBrand = [[MKBrand alloc] initWithBidInt:[rs intForColumn:@"bid"]];
        
        // FIXME: stepsByPid
        _steps = [[NSArray<MKStep *> alloc]init];
        
    }
    return self;
}

@end











