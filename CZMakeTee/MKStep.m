//
//  MKStep.m
//  CZMakeTee
//
//  Created by Cui on 16/4/6.
//  Copyright © 2016年 Cui. All rights reserved.
//

#import "MKStep.h"

@implementation MKStep

- (instancetype)initWithDuringInt: (NSInteger) during {
    if (self = [super init]) {
        _pid = -1;
        _sid = -1;
        _time = during;
    }
    return self;
}


@end
