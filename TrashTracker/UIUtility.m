//
//  UIUtility.m
//  TrashTracker
//
//  Created by Li Wang on 7/26/17.
//  Copyright © 2017 Jian Li. All rights reserved.
//

#import "UIUtility.h"

@implementation UIUtility
+(UIView*)addBlockerToView:(UIView *)view{
    UIView* blocker = [[UIView alloc] initWithFrame:view.frame];
    blocker.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.2];
    [view addSubview:blocker];
    return blocker;
}
@end
