//
//  ViewController.m
//  Mi Segunda App
//
//  Created by Walter Gonzalez Domenzain on 13/09/17.
//  Copyright © 2017 wgdomenzain. All rights reserved.
//

#import "Home.h"

@interface Home ()

@end

@implementation Home

//Initialization methods
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


//Action methods
- (IBAction)changeButtonPressed:(id)sender {
    self.lblWelcome.text = @"Mentira!";

}

- (IBAction)switchValueChanged:(id)sender {
    self.lblWelcome.hidden = YES;
}

- (IBAction)saveButtonPressed:(id)sender {
    self.lblResult.text = self.txtUser.text;
    [self.view endEditing:YES];
}

//Text delegate methods
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    self.lblResult.text = self.txtUser.text;
    [textField resignFirstResponder];
    return YES;
}

//Warning methods
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
