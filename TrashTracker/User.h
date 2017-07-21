//
//  User.h
//  TrashTracker
//
//  Created by Li Wang on 7/21/17.
//  Copyright © 2017 Jian Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

-(NSString*)loginWithUsername:(NSString*) usr andPassword:(NSString*) pwd;
-(NSArray*)allTrashBins;
@end
