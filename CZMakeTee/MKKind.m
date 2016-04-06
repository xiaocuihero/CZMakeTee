//
//  MKKind.m
//  CZMakeTee
//
//  Created by Cui on 16/4/6.
//  Copyright © 2016年 Cui. All rights reserved.
//

#import "MKKind.h"

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

@end
