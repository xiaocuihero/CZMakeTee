//
//  MKClass.m
//  CZMakeTee
//
//  Created by Cui on 16/4/5.
//  Copyright © 2016年 Cui. All rights reserved.
//

#import "MKClass.h"

@implementation MKClass


-(NSInteger)cid{
    return self._id;
}
-(void)setCid:(NSInteger)newCid{
    self._id = newCid;
}

-(NSString*)cname{
    return self.name;
}
-(void)setCname:(NSString*)newCname{
    self.name = newCname;
}

@end
