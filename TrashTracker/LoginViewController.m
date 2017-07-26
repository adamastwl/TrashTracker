//
//  ViewController.m
//  TrashTracker
//
//  Created by Li Wang on 7/19/17.
//  Copyright © 2017 Jian Li. All rights reserved.
//

#import "LoginViewController.h"
#import "AppDelegate.h"
#import "UIUtility.h"

@interface LoginViewController (){
    User* user;
    NSUserDefaults *userDefault;
}
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.labelLoginError.hidden = YES;
    user = ((AppDelegate*)[[UIApplication sharedApplication] delegate]).user;
    userDefault = [NSUserDefaults standardUserDefaults];
    NSString* uid = [userDefault stringForKey:kSettingUserIDKey];
    if (![uid isEqualToString:kNoUser]) {
        [user setUserID:uid];
        [self performSegueWithIdentifier:@"loggedInSegue" sender:self];
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)login:(id)sender {
    UIView* blocker = [UIUtility addBlockerToView:self.view];
    user.username = self.inputUsername.text;
    user.password = self.inputPassword.text;
    [user loginThen:^(NSDictionary *response) {
        [self.view willRemoveSubview:blocker];
        NSString* userID = [response objectForKey:@"user_id"];
        if (userID == nil) {
            self.labelLoginError.hidden = NO;
        }else{
            [userDefault setObject:userID forKey:kSettingUserIDKey];
            [self performSegueWithIdentifier:@"loggedInSegue" sender:self];
        }

    }];
}
@end
