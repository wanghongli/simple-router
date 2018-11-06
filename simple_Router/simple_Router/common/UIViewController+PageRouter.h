//
//  UIViewController+PageRouter.h
//  simple_Router
//
//  Created by sunrise on 2018/11/3.
//  Copyright © 2018 sunriseos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PushPageAction.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (PageRouter)

- (void)pushViewController:(PushPageAction *)pushinfo;

- (void)appRouterPageLink:(NSString *)hrefinfo;
@end

NS_ASSUME_NONNULL_END
