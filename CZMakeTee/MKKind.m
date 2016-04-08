//
//  MKKind.m
//  CZMakeTee
//
//  Created by Cui on 16/4/6.
//  Copyright © 2016年 Cui. All rights reserved.
//

#import "MKKind.h"
@import FMDB;

@implementation MKKind

- (NSInteger)kid{
    return self._id;
}

- (void)setKid:(NSInteger)newKid{
    self._id = newKid;
}

- (NSString *)kname {
    return self.name;
}

- (void)setKname:(NSString *)newKname{
    self.name = newKname;
}

- (instancetype)initWithFMResultSet:(FMResultSet*)rs{
    if (self = [super init]) {
        kid = [rs intForColumn:@"_id"];
        kname = [rs stringForColumn:@"name"];
        _cid = [rs intForColumn:@"cid"];
    }
    return self;
}

// FIXME: datahelp.kindbykid
- (instancetype)initWithKidInt:(NSInteger)kid_{
    if (self = [super init]) {
        kid = kid_;
    }
    return self;
}


@end
