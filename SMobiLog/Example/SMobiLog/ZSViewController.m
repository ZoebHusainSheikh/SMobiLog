//
//  ZSViewController.m
//  SMobiLog
//
//  Created by zsheikh-systango on 05/04/2017.
//  Copyright (c) 2017 zsheikh-systango. All rights reserved.
//

#import "ZSViewController.h"

@interface ZSViewController ()

@end

@implementation ZSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [[SMobiLogger sharedInterface] startMobiLogger];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [[NSArray array] objectAtIndex:1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
