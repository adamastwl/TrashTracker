//
//  User.m
//  TrashTracker
//
//  Created by Li Wang on 7/21/17.
//  Copyright © 2017 Jian Li. All rights reserved.
//

#import "User.h"
#import "RestClient.h"

@implementation User


-(NSString*)loginWithUsername:(NSString *)usr andPassword:(NSString *)pwd{
    NSString* result = nil;
    NSString* url = @"";
    NSString* response = [RestClient getWithURL:url];
    if (![response isEqualToString:@"Failed"]) {
        result = response;
    }
    return result;
}


@end


