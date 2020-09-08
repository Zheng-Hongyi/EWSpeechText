//
//  EWViewController.m
//  EWSpeechText
//
//  Created by zhenghongyi on 09/07/2020.
//  Copyright (c) 2020 zhenghongyi. All rights reserved.
//

#import "EWViewController.h"
#import <EWSpeechTextFactory.h>
@interface EWViewController ()

@end

@implementation EWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [EWSpeechTextFactory speechChineseText:@"你好" rate:0.4 delegate:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
