//
//  RestClient.h
//  TrashTracker
//
//  Created by Li Wang on 7/21/17.
//  Copyright © 2017 Jian Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RestClient : NSObject
+(NSString*)getWithURL:(NSString*)url;
+(NSString*)postWithURL:(NSString*)url andPayload:(NSDictionary*)payload;
+(NSString*)putWithURL:(NSString*)url andPayload:(NSDictionary*)payload;
@end
