//
//  RestClient.m
//  TrashTracker
//
//  Created by Li Wang on 7/21/17.
//  Copyright © 2017 Jian Li. All rights reserved.
//

#import "RestClient.h"

@interface RestClient (){
    NSDictionary *response;
}

@end
@implementation RestClient
+(void)restCallMethod:(NSString*)method WithURL:(NSString*)urlString payload:(NSDictionary*)payload andCompletionHandler:(void (^)(NSDictionary *))handler{
    NSURL* url = [NSURL URLWithString:urlString];
    NSMutableURLRequest* request = [[NSMutableURLRequest alloc] init];
    [request setURL:url];
    [request setHTTPMethod:method];
    if (![method isEqualToString:@"GET"]) {
        [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    }
    
    if (payload) {        
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:payload options:NSJSONWritingPrettyPrinted error:nil];
        [request setHTTPBody:jsonData];
    }
    
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSString *requestReply = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
        NSData *stringData = [requestReply dataUsingEncoding:NSUTF8StringEncoding];
        NSDictionary* json = [NSJSONSerialization JSONObjectWithData:stringData options:0 error:nil];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            if (handler) {
                handler(json);
            }
        });
    }] resume];
}
@end
