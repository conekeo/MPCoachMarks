//
//  ViewController.m
//  Example
//
//  Created by marcelo.perretta@gmail.com on 7/8/15.
//  Copyright (c) 2015 MAWAPE. All rights reserved.
//

#import "ViewController.h"
#import "MPCoachMarks.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self showTutorial];
}
- (IBAction)showTut:(id)sender {
     [self showTutorial];
}

#pragma mark - Tutorial
-(void) showTutorial{
    
    CGRect coachmark1 = CGRectMake(([UIScreen mainScreen].bounds.size.width - 125) / 2, 64, 125, 125);
    CGRect coachImage1 = CGRectMake(coachmark1.origin.x, coachmark1.origin.y, 60, 60);
    coachImage1.origin.x += coachmark1.size.width / 2;
    coachImage1.origin.y += coachmark1.size.height / 2;
    
    CGRect coachmark2 = CGRectMake(0, 289, [UIScreen mainScreen].bounds.size.width, 44);
    CGRect coachImage2 = CGRectMake(coachmark2.origin.x, coachmark2.origin.y, 60, 60);
    coachImage2.origin.x += coachmark2.size.width / 2;
    coachImage2.origin.y += coachmark2.size.height / 2;
    
    
    CGRect coachmark3 = CGRectMake(0, 333, [UIScreen mainScreen].bounds.size.width, 44);
    CGRect coachImage3 = CGRectMake(coachmark3.origin.x, coachmark3.origin.y, 60, 60);
    coachImage3.origin.x += coachmark3.size.width / 2;
    coachImage3.origin.y += coachmark3.size.height / 2;
    
    // Setup coach marks
    NSArray *coachMarks = @[
                            @{
                                @"rect": [NSValue valueWithCGRect:coachmark1],
                                @"caption": @"You can put marks over images",
                                @"shape": [NSNumber numberWithInteger:SHAPE_CIRCLE],
                                kMPCoachMarkImageName: @"tap",
                                kMPCoachMarkImageRect: [NSValue valueWithCGRect:coachImage1],
                            },
                            @{
                                @"rect": [NSValue valueWithCGRect:coachmark2],
                                @"caption": @"Swipe to left to delete",
                                @"shape": [NSNumber numberWithInteger:SHAPE_SQUARE],
                                kMPCoachMarkImageName: @"swiperight",
                                kMPCoachMarkImageRect: [NSValue valueWithCGRect:coachImage2]
                                },
                            @{
                                @"rect": [NSValue valueWithCGRect:coachmark3],
                                @"caption": @"Swip to right to pick",
                                @"shape": [NSNumber numberWithInteger:SHAPE_SQUARE],
                                kMPCoachMarkImageName: @"swipeleft",
                                kMPCoachMarkImageRect: [NSValue valueWithCGRect:coachImage3]
                                },
                            @{
                                @"rect": [NSValue valueWithCGRect:coachmark1],
                                @"caption": @"And double tap to dismiss",
                                @"shape": [NSNumber numberWithInteger:SHAPE_CIRCLE],
                                kMPCoachMarkImageName: @"doubletap",
                                kMPCoachMarkImageRect: [NSValue valueWithCGRect:coachImage1]
                                }
                            ];
    
    MPCoachMarks *coachMarksView = [[MPCoachMarks alloc] initWithFrame:self.navigationController.view.bounds coachMarks:coachMarks];
    coachMarksView.maskCutOutColor = [UIColor clearColor];
    
    [self.navigationController.view addSubview:coachMarksView];
    [coachMarksView start];
    
}

@end
