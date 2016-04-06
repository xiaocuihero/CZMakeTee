//
//  MKKind.h
//  CZMakeTee
//
//  Created by Cui on 16/4/6.
//  Copyright © 2016年 Cui. All rights reserved.
//

#import "MKClassKind.h"

@interface MKKind : MKClassKind{
    NSInteger kid;
    NSString *kname;
}

@property NSInteger cid;

- (NSInteger)kid;
- (void)setKid: (NSInteger)newKid;
- (NSString*)kname;
- (void)setKname: (NSString*)newKname;

@end
