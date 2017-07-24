//
//  SigninViewController.m
//  TrashTracker
//
//  Created by Li Wang on 7/20/17.
//  Copyright © 2017 Jian Li. All rights reserved.
//

#import "SignupViewController.h"
#import "AppDelegate.h"


@interface SignupViewController (){
    User* user;
}

@end

@implementation SignupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    user = ((AppDelegate*)[[UIApplication sharedApplication] delegate]).user;
    self.labelError.text = @"";
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

- (IBAction)confirmSignup:(id)sender {
    NSString* usr = self.inputUsr.text;
    NSString* pwd = self.inputPwd.text;
    NSString* pwdConfirm = self.inputPwdConfirm.text;
    if (usr.length*pwd.length*pwdConfirm.length<1) {
        self.labelError.text = @"请完成以上三处空白";
        return;
    }
    if (![pwd isEqualToString:pwdConfirm]) {
        self.labelError.text = @"密码与确认密码不相符";
        return;
    }
    if (pwd.length < 6 || pwd.length > 12) {
        self.labelError.text = @"密码长度应为6-12位";
        return;
    }
    NSArray* parts = [usr componentsSeparatedByString:@" "];
    if ([parts count] > 1 ) {
        self.labelError.text = @"用户名不能含有空格";
        return;
    }
    user.username = [parts objectAtIndex:0];
    user.password = pwd;
    NSString* userID = [user signup];
    if (userID == nil) {
        self.labelError.text = @"用户名已存在";
        return;
    }else{
        [self performSegueWithIdentifier:@"signedUpSegue" sender:self];
    }
}
@end
