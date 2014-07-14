//
//  AlyaUIUtils.h
//  Objective-C-Utils
//
//  Created by Alexandra on 14/07/14.
//  Copyright (c) 2014 Alexandra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AlyaUIUtils : NSObject

#pragma mark - Alerts

+ (void)showErrorAlertWithTitle:(NSString *)title text:(NSString *)text;
+ (void)showErrorAlertWithText:(NSString *)text;
+ (void)showDefaultErrorAlert;

@end
