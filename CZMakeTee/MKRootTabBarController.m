//
//  MKRootTabBarController.m
//  CZMakeTee
//
//  Created by Cui on 16/4/8.
//  Copyright © 2016年 Cui. All rights reserved.
//

#import "MKRootTabBarController.h"
#import "MKKnowledgeController.h"
#import "MKRecordController.h"
#import "MKBuildController.h"
#import "MKBGMController.h"
#import "MKPersonController.h"


@implementation MKRootTabBarController

- (MKKnowledgeController*)knowledgeC {
    if (knowledgeController) {
        return knowledgeController;
    }else{
        MKKnowledgeController *kc = [MKKnowledgeController new];
        UITabBarItem *item = [[UITabBarItem alloc]initWithTitle:@"" image:[UIImage imageNamed:@"tabbar_1"] tag:0];
        item.selectedImage = [UIImage imageNamed:@"tabbar_1a"];
        kc.tabBarItem = item;
        knowledgeController = kc;
        return kc;
    }
}

- (MKRecordController*)recordC {
    if (recordController) {
        return recordController;
    }else{
        MKRecordController *rc = [MKRecordController new];
        UITabBarItem *item = [[UITabBarItem alloc]initWithTitle:@"" image:[UIImage imageNamed:@"tabbar_2"] tag:1];
        item.selectedImage = [UIImage imageNamed:@"tabbar_2a"];
        rc.tabBarItem = item;
        rc.title = @"";
        recordController = rc;
        return rc;
    }
}

- (MKBuildController*)buildC {
    if (buildController) {
        return buildController;
    }else{
        MKBuildController *bc = [MKBuildController new];
        UITabBarItem *item = [[UITabBarItem alloc]initWithTitle:@"" image:[UIImage imageNamed:@"tabbar_3"] tag:2];
        item.selectedImage = [UIImage imageNamed:@"tabbar_3a"];
        bc.tabBarItem = item;
        bc.title = @"";
        buildController = bc;
        return bc;
    }
}
//- (UINavigationController*)knowledgeN{
//    if (knowledgeNavigationController) {
//        return knowledgeNavigationController;
//    }else{
//        UINavigationController *kn =
//    }
//}
//
//- (UINavigationController*)recordN{
//    
//}
//
//- (UINavigationController*)buildN{
//    
//}
//
//- (UINavigationController*)BGMN{
//    
//}
//
//- (UINavigationController*)personN{
//    
//}



@end
