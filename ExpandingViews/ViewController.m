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
    [self addLongPressGestureToView:_centerView];
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

#pragma mark - Utility Functions
- (void) animateBackToOriginalSize
{
    [UIView animateWithDuration:1
                     animations:^{
                         self.centerView.transform = CGAffineTransformIdentity;
                     }];
}

- (void) animateDepressView
{
    [UIView animateWithDuration:0.3
                     animations:^{
                         self.centerView.transform = CGAffineTransformMakeScale(0.85, 0.85);
                     }];
}

#pragma mark - Long Press Gesture
- (void) addLongPressGestureToView: (UIView*) theView
{
    UILongPressGestureRecognizer *longPressGestureRecognizer = [[UILongPressGestureRecognizer alloc] initWithTarget:self
                                                                                                             action:@selector(view_longpressed:)];
    longPressGestureRecognizer.minimumPressDuration = 0.0;
    [theView addGestureRecognizer:longPressGestureRecognizer];
}

//These Mimic the apple store home page buttons when one of the tiles are tapped or long pressed.
- (void) view_longpressed: (UILongPressGestureRecognizer*) recognizer
{
    if (recognizer.state == UIGestureRecognizerStateBegan)
    {
        [self animateDepressView];
    }
    
    if (recognizer.state == UIGestureRecognizerStateEnded)
    {
        [self animateBackToOriginalSize];
    }
}



@end
