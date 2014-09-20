//
//  EJHEntryViewController.m
//  DayX
//
//  Created by Emily Hoehne on 9/20/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "EJHEntryViewController.h"

@interface EJHEntryViewController () <UITableViewDelegate, UITextFieldDelegate>
@property (nonatomic, strong) NSArray *entry;
@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UITextView *textView;

@end

@implementation EJHEntryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.textView.delegate = self;
    self.textField.title = self.entry.title;
    self.notesView.notes = self.entry.notes;

    
}
-(void)textViewDidChange:(UITextView *)textView {
    [self.textView save:self.entry.note];
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    //This makes the keyboard go away.
    [self.textField resignFirstResponder];
    return YES;
}
-(BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    [self.textField save: self.entry.title];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
