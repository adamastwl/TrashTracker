//
//  RestClient.h
//  TrashTracker
//
//  Created by Li Wang on 7/21/17.
//  Copyright © 2017 Jian Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RestClient : NSObject
+(NSDictionary*)getWithURL:(NSString*)url;
+(NSDictionary*)postWithURL:(NSString*)url andPayload:(NSDictionary*)payload;
+(NSDictionary*)putWithURL:(NSString*)url andPayload:(NSDictionary*)payload;
@end
