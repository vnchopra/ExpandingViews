//
//  ViewController.m
//  ExpandingViews
//
//  Created by Chopra, Varun on 7/5/18.
//  Copyright © 2018 None. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *centerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Button Action

- (IBAction)executeAction:(id)sender
{
    [UIView animateWithDuration:1.0
                     animations:^{
                         self.centerView.transform = CGAffineTransformMakeScale(1.7, 1.7);
                     }
                     completion:^(BOOL finished) {
                         [self animateBackToOriginalSize];
                     }];
}

#pragma mark Utility Functions
- (void) animateBackToOriginalSize
{
    [UIView animateWithDuration:1
                     animations:^{
                         self.centerView.transform = CGAffineTransformIdentity;
                     }];
}
@end
