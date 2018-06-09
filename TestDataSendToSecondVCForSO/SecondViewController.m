//
//  SecondViewController.m
//  TestDataSendToSecondVCForSO
//
//  Created by VAndrJ on 6/9/18.
//  Copyright © 2018 VAndrJ. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UILabel *infoLabel;

@end

@implementation SecondViewController

- (IBAction)checkValueAction:(UIButton *)sender {
    [_infoLabel setText:_selectedValue];
}

- (IBAction)closeAction:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
