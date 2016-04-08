//
//  MKBrand.h
//  
//
//  Created by Cui on 16/4/7.
//
//

#import <Foundation/Foundation.h>
@class FMResultSet;

@interface MKBrand : NSObject
@property NSInteger bid;
@property NSString *bname;
- (instancetype)initWithFMResultSet:(FMResultSet *)rs;
- (instancetype)initWithBidInt:(NSInteger)bid_;
@end
