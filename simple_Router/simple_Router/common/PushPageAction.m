//
//  PushPageAction.m
//  simple_Router
//
//  Created by sunrise on 2018/11/3.
//  Copyright © 2018 sunriseos. All rights reserved.
//

#import "PushPageAction.h"

@implementation PushPageAction

static PushPageAction *pageAction = nil;

#pragma mark  - Singleton
+ (instancetype)sharedAction{
    static dispatch_once_t onceToken ;
    dispatch_once(&onceToken, ^{
        pageAction = [[super allocWithZone:NULL] init] ;
    }) ;
    return pageAction ;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    return [PushPageAction sharedAction];
}

-(id) copyWithZone:(struct _NSZone *)zone{
    return self;
}

#pragma mark  - init
+ (instancetype)pageActionWith:(NSString *)vcName params:(NSMutableDictionary *)params{
    return [[self alloc] initPageActionWith:vcName params:params];
}

- (instancetype)initPageActionWith:(NSString *)vcName params:(NSMutableDictionary *)params{
    if (self = [super init]) {
        _VCNAME = vcName;
        _PARAMS = params;
    }
    return self;
}
@end
