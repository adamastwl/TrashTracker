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

-(void)signupThen:(void (^)(NSDictionary *))handler{
    NSString* url = @"signup with _username and _password, response user_id, if exist, response error without user_id";
    [RestClient restCallMethod:@"POST" WithURL:url payload:nil andCompletionHandler:^(NSDictionary *data) {
        handler(data);
        self.userID = [data objectForKey:@"user_id"];
    }];
}

////For test purpose
//-(void)signupThen:(void (^)(NSDictionary *))handler{
//    NSString* url = @"signup with _username and _password, response user_id, if exist, response error without user_id";
//    url = @"https://ncimatch.auth0.com/oauth/ro";
//    NSDictionary* requestBody = [NSDictionary dictionaryWithObjectsAndKeys:
//                                 @"uCkLRzSlYP3CFOm1pHVn5lYzBMceCgEH", @"client_id",
//                                 @"npm-d-admin@outlook.com", @"username",
//                                 @"test1@dev", @"password",
//                                 @"password", @"grant_type",
//                                 @"openid email roles", @"scope",
//                                 @"MATCH-Development", @"connection", nil];
//    [RestClient restCallMethod:@"POST" WithURL:url payload:requestBody andCompletionHandler:^(NSDictionary *data) {
//        if (handler){handler(data);}
//        self.userID = [data objectForKey:@"id_token"];
//    }];
//}

-(void)loginThen:(void (^)(NSDictionary *))handler{
    NSString* url = @"";
    [RestClient restCallMethod:@"POST" WithURL:url payload:nil andCompletionHandler:^(NSDictionary *data) {
        handler(data);
        self.userID = [data objectForKey:@"user_id"];
    }];
}

-(void)getAllTrashBinsThen:(void (^)(NSDictionary *))handler{
    NSString* url = @"";
    [RestClient restCallMethod:@"POST" WithURL:url payload:nil andCompletionHandler:handler];
}


@end


