//
//  AppDelegate.h
//  TrashTracker
//
//  Created by Li Wang on 7/19/17.
//  Copyright © 2017 Jian Li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "User.h"
#import "Constants.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

@property (strong, nonatomic) User* user;

- (void)saveContext;


@end

