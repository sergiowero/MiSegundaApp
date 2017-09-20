//
//  ViewController.h
//  Mi Segunda App
//
//  Created by Walter Gonzalez Domenzain on 13/09/17.
//  Copyright © 2017 wgdomenzain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Home : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *lblWelcome;
@property (strong, nonatomic) IBOutlet UILabel *lblResult;
@property (strong, nonatomic) IBOutlet UITextField *txtUser;

@property NSArray *names;
@property NSArray *colors;

@property int index;

@end

