//
//  RestClient.m
//  TrashTracker
//
//  Created by Li Wang on 7/21/17.
//  Copyright © 2017 Jian Li. All rights reserved.
//

#import "RestClient.h"

@implementation RestClient
+(NSDictionary*)getWithURL:(NSString *)url{
    NSDictionary* result = [NSDictionary dictionaryWithObjectsAndKeys:@"value", @"key", nil];
    return result;
}
+(NSDictionary*)postWithURL:(NSString *)url andPayload:(NSDictionary *)payload{
    NSDictionary* result = [NSDictionary dictionaryWithObjectsAndKeys:@"value", @"key", nil];
    return result;
}

+(NSDictionary*)putWithURL:(NSString *)url andPayload:(NSDictionary *)payload{
    NSDictionary* result = [NSDictionary dictionaryWithObjectsAndKeys:@"value", @"key", nil];
    return result;
}

@end
