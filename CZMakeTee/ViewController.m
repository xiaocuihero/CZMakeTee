//
//  ViewController.m
//  CZMakeTee
//
//  Created by Cui on 16/4/5.
//  Copyright © 2016年 Cui. All rights reserved.
//

#import "ViewController.h"
#import "GlobalConst.m"
#import "MKClass.h"
#import "MKStep.h"
#import "CZMakeTee-swift.h"

@import SwiftHTTP;

@interface ViewController () {
    NSString *testExtension;
}
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self test];
}

- (void)test{
    NSLog(@"111");
//    testProperty = @"123";

    self.testExtensio = @"321";
//    self.title = testProperty;ss
}

- (NSString*)testExtensio{
    NSLog(@"get : %@", testExtension);
    return testExtension;
}

- (void)setTestExtensio:(NSString*) newValue{
    testExtension = newValue;
    NSLog(@"set : %@", testExtension);
}

//- (NSString *)testProperty{
//    NSLog(@"get : %@", testProperty);
//    return testProperty;stjushuo henka
//}
//
//- (void)setTestProperty:(NSString*) newValue{
//    testProperty = newValue;
//    NSLog(@"set : %@", testProperty);
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
