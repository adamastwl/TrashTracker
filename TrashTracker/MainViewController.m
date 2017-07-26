//
//  MainViewController.m
//  TrashTracker
//
//  Created by Li Wang on 7/24/17.
//  Copyright © 2017 Jian Li. All rights reserved.
//

#import "MainViewController.h"
#import "User.h"
#import "AppDelegate.h"

@interface MainViewController (){
    User* user;
}

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    user = ((AppDelegate*)[[UIApplication sharedApplication] delegate]).user;
    self.test.text = user.userID;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
