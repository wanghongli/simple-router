//
//  UIViewController+PageRouter.m
//  simple_Router
//
//  Created by sunrise on 2018/11/3.
//  Copyright © 2018 sunriseos. All rights reserved.
//

#import "UIViewController+PageRouter.h"

@implementation UIViewController (PageRouter)


- (void)pushViewController:(PushPageAction *)pushinfo{
    if (!pushinfo) { return; }
    if(pushinfo.VCNAME.length <=0){ return; }
    Class class_page = NSClassFromString(pushinfo.VCNAME);
    if (class_page != nil) {
        SRBaseController *targetVc = [[class_page alloc] init];
        if (pushinfo.PARAMS != nil && pushinfo.PARAMS.count > 0) {
            [targetVc setReceiveParams:pushinfo.PARAMS];
        } else {
            [targetVc setReceiveParams:[@{} mutableCopy]];
        }
        [self.navigationController pushViewController:targetVc animated:YES];
    }
}

#pragma mark - Action
// 协议约定
//      apphref:    跳转app原生页面
//      http:       跳转H5页面
//      appfunhref:       跳转
- (void)appRouterPageLink:(NSString *)hrefinfo{
    if (sr_StringIsEmpty(hrefinfo)) {
        return;
    }
    if ([hrefinfo rangeOfString:@"http"].location == 0) {
        /**  跳转H5 页面  */
            // [self pushViewController:[PushPageAction pageActionWith:@"" params:nil]];
    } else {
        NSRange rangHref = [hrefinfo rangeOfString:@"apphref://"];
        // B2B  商家的域名
        if (rangHref.length > 0 && rangHref.location != NSNotFound) {
            
            NSString *surl = [hrefinfo substringFromIndex:rangHref.location];
            //  --  有参数时，结尾会莫明的多个？，在这里去掉  // -- 这个要根据具体的情况 跟后台返回的数据对比
            surl = [surl hasSuffix:@"?"] ? [surl substringToIndex:surl.length-1]:surl;
            NSURL *newUrl = [NSURL URLWithString:surl];
            [self appRouterPageName:newUrl.host paramsString:newUrl.query];
        } else {
            // 调用本页面的方法
        }
        
    }
}

- (void)appRouterPageName:(NSString *)pagename paramsString:(NSString *)sparam{
    if (sr_StringIsEmpty(pagename)) { return; }
    NSString *spushPage = pagename;
    NSArray *kvs = [sparam componentsSeparatedByString:@"&"];
    NSMutableDictionary *dicparams = [NSMutableDictionary dictionary];
    for (NSString * value in kvs) {
        NSArray *dicString = [value componentsSeparatedByString:@"="];
        [dicparams setValue:dicString[1] forKey:dicString[0]];
    }
    [self pushViewController:[PushPageAction pageActionWith:spushPage params:dicparams]];
}

@end
