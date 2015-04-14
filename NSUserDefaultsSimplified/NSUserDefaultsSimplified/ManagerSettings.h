//
//  ManagerSettings.h
//  NSUserDefaultsSimplified
//
//  Created by JAVIER CALATRAVA LLAVERIA on 14/04/15.
//  Copyright (c) 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ManagerSettings : NSObject

+(ManagerSettings*) sharedInstance;

@property (nonatomic, assign) int attributeName;


@end
