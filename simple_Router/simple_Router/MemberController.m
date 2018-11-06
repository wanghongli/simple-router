//
//  MemberController.m
//  simple_Router
//
//  Created by sunrise on 2018/11/3.
//  Copyright © 2018 sunriseos. All rights reserved.
//

#import "MemberController.h"

@interface MemberController ()

@end

@implementation MemberController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    NSLog(@"%@", self.receiveParams);
    self.title = [self.receiveParams valueForKey:@"test"];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
