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
    
    
    CGRect coachImage1 = CGRectMake(coachmark1.origin.x, coachmark1.origin.y, 30, 30);
    coachImage1.origin.x += coachmark1.size.width / 2;
    coachImage1.origin.y += coachmark1.size.height / 2;
    
    // Setup coach marks
    NSArray *coachMarks = @[
                            @{
                                @"rect": [NSValue valueWithCGRect:coachmark1],
                                @"caption": @"You can put marks over images",
                                @"shape": [NSNumber numberWithInteger:SHAPE_CIRCLE],
                                @"position":[NSNumber numberWithInteger:LABEL_POSITION_BOTTOM],
                                @"alignment":[NSNumber numberWithInteger:LABEL_ALIGNMENT_RIGHT],
                                @"showArrow":[NSNumber numberWithBool:YES],
                                kMPCoachMarkImageName: @"swipeleft",
                                kMPCoachMarkImageRect: [NSValue valueWithCGRect:coachImage1],
                            },
                            @{
                                @"rect": [NSValue valueWithCGRect:coachmark1],
                                @"caption": @"And works with navigations buttons too",
                                @"shape": [NSNumber numberWithInteger:SHAPE_SQUARE],
                                kMPCoachMarkImageName: @"swiperight",
                                kMPCoachMarkRect: [NSValue valueWithCGRect:coachImage1]
                                },
                            @{
                                @"rect": [NSValue valueWithCGRect:coachmark1],
                                @"caption": @"And works with navigations buttons too",
                                @"shape": [NSNumber numberWithInteger:SHAPE_CIRCLE],
                                kMPCoachMarkImageName: @"tap",
                                kMPCoachMarkImageRect: [NSValue valueWithCGRect:coachImage1]
                                },
                            @{
                                @"rect": [NSValue valueWithCGRect:coachmark1],
                                @"caption": @"And works with navigations buttons too",
                                @"shape": [NSNumber numberWithInteger:SHAPE_SQUARE],
                                kMPCoachMarkImageName: @"doubletap",
                                kMPCoachMarkImageRect: [NSValue valueWithCGRect:coachImage1]
                                }
                            ];
    
    MPCoachMarks *coachMarksView = [[MPCoachMarks alloc] initWithFrame:self.navigationController.view.bounds coachMarks:coachMarks];
    coachMarksView.maskCutOutColor = [UIColor colorWithRed:1.000 green:0.000 blue:0.009 alpha:0.504];
    
    [self.navigationController.view addSubview:coachMarksView];
    [coachMarksView start];
    
}

@end
