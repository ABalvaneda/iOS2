//
//  ViewController.m
//  Tarea1_1
//
//  Created by SDA on 4/11/13.
//  Copyright (c) 2013 SDA. All rights reserved.
//

#import "ViewController.h"
#import "HomeViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}




#pragma mark - Delegate Mothods for UITextField

- (BOOL)textFieldShouldReturn:(UITextField *)textField;     {
    
    if( textField == self.txtUsername ) {
        [self.txtPassword becomeFirstResponder ];
        
    }  else if (textField == self.txtPassword) {
    
        if([self.txtUsername.text isEqualToString:@"User"] && [self.txtPassword.text isEqualToString:@"Test"]) {
            
            NSLog(@"CallingVC");
            HomeViewController *homeInstance = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeView"];
            [self presentViewController:homeInstance animated:YES completion:nil];
            
            
            
        }
        
        
        

    }
    
    
    return YES;
    
}


-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event  {
    
    UITouch *touch = [[event allTouches] anyObject];
    if ([self.txtPassword isFirstResponder] && [touch view]  != self.txtPassword ) {
        [self.txtPassword resignFirstResponder];
        
    }
    else if ([self.txtUsername isFirstResponder] && [touch view]  != self.txtUsername) {
        [self.txtUsername resignFirstResponder];
        
    }
    
}

@end
