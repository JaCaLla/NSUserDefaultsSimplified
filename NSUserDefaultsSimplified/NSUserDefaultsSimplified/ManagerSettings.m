//
//  ManagerSettings.m
//  NSUserDefaultsSimplified
//
//  Created by JAVIER CALATRAVA LLAVERIA on 14/04/15.
//  Copyright (c) 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

#import "ManagerSettings.h"

@implementation ManagerSettings


+(ManagerSettings*)sharedInstance
{
    static ManagerSettings *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[ManagerSettings alloc] init];
        // Do any other initialisation stuff here
    });
    return sharedInstance;
}

#pragma mark - Properties

static NSString *const kAttributeName = @"attributeName";

- (int)attributeName
{
    return [[[NSUserDefaults standardUserDefaults] objectForKey:kAttributeName] intValue];
}

- (void)setAttributeName:(int)value
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:value] forKey:kAttributeName];
    [defaults synchronize];
}

@end
