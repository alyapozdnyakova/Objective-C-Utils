//
//  AlyaValidators.m
//  Objective-C-Utils
//
//  Created by Alexandra Pozdnyakova on 29/07/2014.
//  Copyright (c) 2014 Alexandra. All rights reserved.
//

#import "AlyaValidators.h"

@implementation AlyaValidators

+ (BOOL)checkPassword:(NSString *)password error:(NSError **)error
{
    NSString *errorString;
    
    if ([password length] < 6)
    {
        errorString = @"Password should not be less than 6 characters.";
    }
    
    if (errorString && errorString.length  > 0)
    {
        NSDictionary *dict = @{@"NSLocalizedDescriptionKey" : errorString};
        *error = [NSError errorWithDomain:@"error" code:100 userInfo:dict];
        return NO;
    }
    
    return YES;
}


+ (BOOL)checkEmail:(NSString *)email error:(NSError **)error
{
    if([email length]==0)
    {
        NSDictionary *dict = @{@"NSLocalizedDescriptionKey" : @"Email can't be empty"};
        *error = [NSError errorWithDomain:@"error" code:100 userInfo:dict];
        return NO;
    }
    
    NSString *regExPattern = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    
    NSRegularExpression *regEx = [[NSRegularExpression alloc] initWithPattern:regExPattern options:NSRegularExpressionCaseInsensitive error:nil];
    NSUInteger regExMatches = [regEx numberOfMatchesInString:email options:0 range:NSMakeRange(0, [email length])];
    
    if (regExMatches == 0)
    {
        NSDictionary *dict = @{@"NSLocalizedDescriptionKey" : @"Incorrect email"};
        *error = [NSError errorWithDomain:@"error" code:100 userInfo:dict];
        return NO;
    }
    else
    {
        return YES;
    }
}

@end
