//
//  MKRootTabBarController.h
//  CZMakeTee
//
//  Created by Cui on 16/4/8.
//  Copyright © 2016年 Cui. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MKKnowledgeController, MKRecordController, MKBuildController, MKBGMController, MKPersonController;


@interface MKRootTabBarController : UITabBarController{
    UINavigationController *knowledgeNavigationController;
    MKKnowledgeController *knowledgeController;
    
    UINavigationController *recordNavigationController;
    MKRecordController *recordController;
    
    UINavigationController *buildNavigationController;
    MKBuildController *buildController;
    
    UINavigationController *BGMNavigationController;
    MKBGMController *BGMController;
    
    UINavigationController *personNavigationController;
    MKPersonController *personController;
}

@end
