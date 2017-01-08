//
//  MyDataManager.m
//  MyDataManager
//
//  Created by peixiaobin on 2017/1/8.
//  Copyright © 2017年 peixiaobin. All rights reserved.
//

#import "MyDataManager.h"
#import <objc/runtime.h>
@implementation MyDataManager

+ (id)sharedInstance
{
    Class selfClass = [self class];
    id instance = objc_getAssociatedObject(selfClass, @"kOTSharedInstance");
    if (!instance)
    {
        instance = [[selfClass alloc] init];
        objc_setAssociatedObject(selfClass, @"kOTSharedInstance", instance, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return instance;
}
@end
