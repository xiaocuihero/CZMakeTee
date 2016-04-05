//
//  MKClass.h
//  CZMakeTee
//
//  Created by Cui on 16/4/5.
//  Copyright © 2016年 Cui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MKClassKind.h"

@interface MKClass : MKClassKind {
    NSInteger _cid;
    NSString* _cname;
}

@property NSInteger cid;
@property NSString* cname;

@end
