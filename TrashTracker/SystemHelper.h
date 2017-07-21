//
//  SystemHelper.h
//  TrashTracker
//
//  Created by Li Wang on 7/21/17.
//  Copyright © 2017 Jian Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SystemHelper : NSObject
-(BOOL)hasUser:(NSString*) username;
-(BOOL)signUpUser:(NSString*) usr withPassword:(NSString*) pwd;
@end
