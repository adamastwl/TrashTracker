//
//  ViewController.h
//  TrashTracker
//
//  Created by Li Wang on 7/19/17.
//  Copyright © 2017 Jian Li. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *inputUsername;
@property (weak, nonatomic) IBOutlet UITextField *inputPassword;
@property (weak, nonatomic) IBOutlet UILabel *labelLoginError;

- (IBAction)login:(id)sender;
@end

