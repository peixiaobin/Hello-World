//
//  MyDataManager.h
//  MyDataManager
//
//  Created by peixiaobin on 2017/1/8.
//  Copyright © 2017年 peixiaobin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyDataManager : NSObject
@property (nonatomic, copy) NSString *string;
+ (id)sharedInstance;
@end
