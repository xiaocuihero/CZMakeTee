//
//  MKPlan.h
//  CZMakeTee
//
//  Created by Cui on 16/4/7.
//  Copyright © 2016年 Cui. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MKStep;
@class MKClass;
@class MKKind;
@class MKBrand;


@interface MKPlan : NSObject

@property NSInteger pid;
@property NSString *title;
@property NSString *detail;
@property BOOL wash;
@property NSInteger temperature;
@property NSString *teaRadio;
@property NSString *teaPot;
@property NSInteger used;
@property NSInteger teaDate;
@property NSInteger createDate;
@property NSInteger modifyDate;
@property NSInteger likes;
@property NSArray<MKStep *> *steps;
@property MKClass *teaClass;
@property MKKind *teaKind;
@property MKBrand *teaBrand;

@end
