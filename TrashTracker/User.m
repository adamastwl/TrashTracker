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

-(NSString*)signup{
    NSString* url = @"signup with _username and _password, response user_id, if exist, response error without user_id";
    NSDictionary* response = [RestClient getWithURL:url];
    return [response objectForKey:@"user_id"];
}


-(NSString*)login{
    NSString* url = @"";
    NSDictionary* response = [RestClient getWithURL:url];
    return [response objectForKey:@"user_id"];
}

-(NSArray*)allTrashBins{
    NSString* url = @"";
    NSDictionary* response = [RestClient getWithURL:url];
    return [response objectForKey:@"user_id"];
}


@end


