//
//  PushPageAction.h
//  simple_Router
//
//  Created by sunrise on 2018/11/3.
//  Copyright © 2018 sunriseos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PushPageAction : NSObject

@property (nonatomic, copy) NSString * VCNAME;
@property (nonatomic, strong) NSMutableDictionary * PARAMS;

+ (instancetype)sharedAction;


+ (instancetype)pageActionWith:(NSString *)vcName params:(NSMutableDictionary *)params;

@end

NS_ASSUME_NONNULL_END
