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
    
    CGRect coachmark3 = CGRectMake(2, 20, 30, 30);
    
    CGRect coachImage1 = coachmark3;
    coachImage1.origin.x += 50;
    
    CGRect coachImage2 = coachImage1;
    coachImage2.origin.x += 100;
    
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
                                @"rect": [NSValue valueWithCGRect:coachmark3],
                                @"caption": @"And works with navigations buttons too",
                                @"shape": [NSNumber numberWithInteger:SHAPE_SQUARE],
                                kMPCoachMarkImageName: @"swiperight",
                                kMPCoachMarkRect: [NSValue valueWithCGRect:coachImage2]
                                },
                            @{
                                @"rect": [NSValue valueWithCGRect:coachmark3],
                                @"caption": @"And works with navigations buttons too",
                                @"shape": [NSNumber numberWithInteger:SHAPE_SQUARE],
                                kMPCoachMarkImageName: @"tap",
                                kMPCoachMarkImageRect: [NSValue valueWithCGRect:coachImage2]
                                },
                            @{
                                @"rect": [NSValue valueWithCGRect:coachmark3],
                                @"caption": @"And works with navigations buttons too",
                                @"shape": [NSNumber numberWithInteger:SHAPE_SQUARE],
                                kMPCoachMarkImageName: @"doubletap",
                                kMPCoachMarkImageRect: [NSValue valueWithCGRect:coachImage2]
                                }
                            ];
    
    MPCoachMarks *coachMarksView = [[MPCoachMarks alloc] initWithFrame:self.navigationController.view.bounds coachMarks:coachMarks];
    [self.navigationController.view addSubview:coachMarksView];
    [coachMarksView start];
    
}

@end
