//
//  ViewController.m
//  WPLineIndicatorSegmentedControl
//
//  Created by 王鹏 on 15/10/10.
//  Copyright © 2015年 王鹏. All rights reserved.
//

#import "ViewController.h"
#import "WPLineIndicatorSegmentedControl.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    WPLineIndicatorSegmentedControl *segmentedControl = [[WPLineIndicatorSegmentedControl alloc] initWithSectionTitles:@[@"POI", @"Food", @"Activity"]];
    [segmentedControl setFrame:CGRectMake(10, 10, 300, 60)];
    [segmentedControl addTarget:self action:@selector(segmentedControlChangedValue:) forControlEvents:UIControlEventValueChanged];
    [segmentedControl setTag:1];
    [self.view addSubview:segmentedControl];
    
    WPLineIndicatorSegmentedControl *segmentedControl2 = [[WPLineIndicatorSegmentedControl alloc] initWithSectionTitles:@[@"One", @"Two", @"3", @"4", @"Five55"]];
    [segmentedControl2 setIndexChangeBlock:^(NSUInteger index) {
        NSLog(@"Selected index %ld", index);
    }];
    
    [segmentedControl2 setSelectionIndicatorHeight:4.0f];
    [segmentedControl2 setBackgroundColor:[UIColor blackColor]];
    [segmentedControl2 setTextColor:[UIColor whiteColor]];
    [segmentedControl2 setSelectionIndicatorColor:[UIColor redColor]];
    [segmentedControl2 setSelectionIndicatorMode:HMSelectionIndicatorFillsSegment];
    [segmentedControl2 setSegmentEdgeInset:UIEdgeInsetsMake(0, 6, 0, 6)];
    [segmentedControl2 setCenter:CGPointMake(160, 120)];
    [segmentedControl2 setTag:2];
    [self.view addSubview:segmentedControl2];
    
    WPLineIndicatorSegmentedControl *segmentedControl3 = [[WPLineIndicatorSegmentedControl alloc] initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, 50)];
    [segmentedControl3 setSectionTitles:@[@"Headlines", @"Worldwide", @"Local"]];
    [segmentedControl3 setSelectedIndex:1];
    [segmentedControl3 setBackgroundColor:[UIColor lightGrayColor]];
    [segmentedControl3 setTextColor:[UIColor whiteColor]];
    [segmentedControl3 setSelectionIndicatorColor:[UIColor blackColor]];
    [segmentedControl3 setTag:3];
    [self.view addSubview:segmentedControl3];
    
    WPLineIndicatorSegmentedControl *segmentedControl4 = [[WPLineIndicatorSegmentedControl alloc] initWithFrame:CGRectMake(0, 400, self.view.frame.size.width, 55)];
    [segmentedControl4 setSectionTitles:@[@"按时间", @"按类别", @"按方式"]];
    [segmentedControl4 setFont:[UIFont fontWithName:@"Avenir-Light" size:14.0f]];
    [segmentedControl4 setSelectedIndex:0];
    [segmentedControl4 setBackgroundColor:[UIColor colorWithRed:250/255.0 green:250/255.0 blue:250/255.0 alpha:1.0]];
    [segmentedControl4 setTextColor:[UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:1.0]];
    [segmentedControl4 setTextIndicatorColor:[UIColor colorWithRed:239/255.0 green:140/255.0 blue:11/255.0 alpha:1.0]];
    [segmentedControl4 setSelectionIndicatorColor:[UIColor colorWithRed:239/255.0 green:140/255.0 blue:11/255.0 alpha:1.0]];
    [segmentedControl4 setSelectionIndicatorHeight:2.0f];
    [segmentedControl4 setTag:4];
    [segmentedControl4 setIndexChangeBlock:^(NSUInteger index) {
        NSLog(@"segmentedControl4 Selected index %ld", index);
    }];
    
    [self.view addSubview:segmentedControl4];
}
- (void)segmentedControlChangedValue:(WPLineIndicatorSegmentedControl *)segmentedControl {
    NSLog(@"Selected index %ld (via UIControlEventValueChanged)", segmentedControl.selectedIndex);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
