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
    
    self.names  = @[
               @"First",
               @"Second",
               @"Third",
               @"Four",
               @"Five"];
    
    self.colors  = @[
                [UIColor blackColor],
                [UIColor blueColor],
                [UIColor redColor],
                [UIColor purpleColor],
                [UIColor grayColor]];
    
    self.index = 1;
    
    self.lblWelcome.text = @"First";
}


//Action methods
- (IBAction)changeButtonPressed:(id)sender {
    self.lblWelcome.text = [self.names objectAtIndex : self.index];
    self.lblWelcome.textColor = [self.colors objectAtIndex : self.index];
    
    self.index++;
    if(self.index > 4)
        self.index = 0;

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
