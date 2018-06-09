//
//  ViewController.m
//  TestDataSendToSecondVCForSO
//
//  Created by VAndrJ on 6/9/18.
//  Copyright © 2018 VAndrJ. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSString *currentSelection;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self checkSelectedSegment:_segmentedControl];
}

- (void)checkSelectedSegment:(UISegmentedControl *) segmentedControl {
    _currentSelection = [NSString stringWithFormat:@"Значение %ld", segmentedControl.selectedSegmentIndex];
    [_infoLabel setText:_currentSelection];
}

- (IBAction)onSegmetChange:(UISegmentedControl *)sender {
    [self checkSelectedSegment:sender];
}

- (IBAction)goToNextControllerAction:(UIButton *)sender {
    SecondViewController *secondController = (SecondViewController *)[[self storyboard] instantiateViewControllerWithIdentifier:@"SecondViewController"];
    [secondController setSelectedValue:_currentSelection];
    [self presentViewController:secondController animated:YES completion:nil];
}

@end
