//
//  RestClient.h
//  TrashTracker
//
//  Created by Li Wang on 7/21/17.
//  Copyright © 2017 Jian Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RestClient : NSObject
+(void)restCallMethod:(NSString*)method WithURL:(NSString*)urlString payload:(NSDictionary*)payload andCompletionHandler:(void (^)(NSDictionary *))handler;
@end
