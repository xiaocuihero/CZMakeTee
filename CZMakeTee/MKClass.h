//
//  MKClass.h
//  CZMakeTee
//
//  Created by Cui on 16/4/5.
//  Copyright © 2016年 Cui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MKClassKind.h"

@class FMResultSet;
@interface MKClass : MKClassKind {
    NSInteger cid;
    NSString* cname;
}

-(NSInteger)cid;
-(void)setCid:(NSInteger)newCid;

-(NSString*)cname;
-(void)setCname:(NSString*)newCname;

- (instancetype)initWithFMResultSet:(FMResultSet*)rs;
- (instancetype)initWithCidInt:(NSInteger)cid_;

@end
