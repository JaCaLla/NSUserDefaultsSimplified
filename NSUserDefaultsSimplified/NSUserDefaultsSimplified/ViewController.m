//
//  ViewController.m
//  NSUserDefaultsSimplified
//
//  Created by JAVIER CALATRAVA LLAVERIA on 14/04/15.
//  Copyright (c) 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

#import "ViewController.h"
#import "ManagerSettings.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [ManagerSettings sharedInstance].attributeName=5;
    NSLog(@"%d",[ManagerSettings sharedInstance].attributeName);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
