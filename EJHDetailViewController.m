//
//  EJHDetailViewController.m
//  DayX
//
//  Created by Emily Hoehne on 9/16/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "EJHDetailViewController.h"

@interface EJHDetailViewController () <UITextFieldDelegate, UITextViewDelegate>
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UIButton *button; 
@property (strong, nonatomic) IBOutlet UIToolbar *barButton;

@end

@implementation EJHDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)button:(id)sender {
    
    self.textField.text= @"";
    self.textView.text= @"";
    
}
- (IBAction)save:(id)sender {
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.textField.delegate = self;
    self.textView.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    [self save:textField];
    return YES;
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.textField resignFirstResponder];
    [self save:textField];
    
    return YES;
}
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    
    return YES;
}


@end
