//
//  ViewController.m
//  TrashTracker
//
//  Created by Li Wang on 7/19/17.
//  Copyright © 2017 Jian Li. All rights reserved.
//

#import "LoginViewController.h"
#import "AppDelegate.h"

@interface LoginViewController (){
    User* user;
}
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    user = ((AppDelegate*)[[UIApplication sharedApplication] delegate]).user;
    self.labelLoginError.hidden = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)login:(id)sender {
    user.username = self.inputUsername.text;
    user.password = self.inputPassword.text;
    NSString* userID = [user signup];
    if (userID == nil) {
        self.labelLoginError.hidden = NO;
        return;
    }else{
        [self performSegueWithIdentifier:@"loggedInSegue" sender:self];
    }
}
@end
