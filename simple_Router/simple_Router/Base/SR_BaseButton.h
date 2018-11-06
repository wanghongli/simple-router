//
//  SR_BaseButton.h
//  simple_Router
//
//  Created by sunrise on 2018/11/3.
//  Copyright © 2018 sunriseos. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SR_BaseButton;

@protocol SR_BaseButtonDelegate <NSObject>

- (void)srBaseButtonDidClick:(SR_BaseButton *)btuton;

@end
NS_ASSUME_NONNULL_BEGIN

@interface SR_BaseButton : UIButton
@property (nonatomic, copy) NSString * hrefInfo;
@property (nonatomic, assign) id<SR_BaseButtonDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
