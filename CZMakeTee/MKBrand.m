//
//  MKBrand.m
//  
//
//  Created by Cui on 16/4/7.
//
//

#import "MKBrand.h"

@import FMDB;

@implementation MKBrand

- (instancetype)initWithFMResultSet:(FMResultSet *)rs {
    if (self = [super init]) {
        _bid = [rs intForColumn:@"_id"];
        _bname = [rs stringForColumn:@"name"];
    }
    return self;
}

// FIXME: d
- (instancetype)initWithBidInt:(NSInteger)bid_ {
    if (self = [super init]) {
        _bid = bid_;
    }
    return self;
}

@end
