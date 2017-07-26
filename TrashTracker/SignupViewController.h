//
//  SigninViewController.h
//  TrashTracker
//
//  Created by Li Wang on 7/20/17.
//  Copyright © 2017 Jian Li. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constants.h"

@interface SignupViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *inputUsr;
@property (weak, nonatomic) IBOutlet UITextField *inputPwd;
@property (weak, nonatomic) IBOutlet UITextField *inputPwdConfirm;
@property (weak, nonatomic) IBOutlet UILabel *labelError;
- (IBAction)confirmSignup:(id)sender;
@end
