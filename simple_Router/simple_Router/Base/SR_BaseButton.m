//
//  SR_BaseButton.m
//  simple_Router
//
//  Created by sunrise on 2018/11/3.
//  Copyright © 2018 sunriseos. All rights reserved.
//

#import "SR_BaseButton.h"

@implementation SR_BaseButton
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        [self addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

#pragma mark - responds Events
- (void)click:(SR_BaseButton *)btn{
    if ([self.delegate respondsToSelector:@selector(srBaseButtonDidClick:)]) {
        [self.delegate srBaseButtonDidClick:btn];
    }
}
@end
