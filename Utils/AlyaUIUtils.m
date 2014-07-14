//
//  AlyaUIUtils.m
//  Objective-C-Utils
//
//  Created by Alexandra on 14/07/14.
//  Copyright (c) 2014 Alexandra. All rights reserved.
//

#import "AlyaUIUtils.h"

@implementation AlyaUIUtils

#pragma mark - Alerts

+ (void)showErrorAlertWithTitle:(NSString *)title text:(NSString *)text
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:text delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil];
    [alertView show];
}

+ (void)showErrorAlertWithText:(NSString *)text
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:text delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil];
    [alertView show];
}


+ (void)showDefaultErrorAlert
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Something went wrong. Please try again." delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil];
    [alertView show];
}

@end
