//
//  User.h
//  TrashTracker
//
//  Created by Li Wang on 7/21/17.
//  Copyright © 2017 Jian Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (strong, nonatomic) NSString* username;
@property (strong, nonatomic) NSString* password;

-(NSString*)signup;
-(NSString*)login;
-(NSArray*)allTrashBins;
@end
