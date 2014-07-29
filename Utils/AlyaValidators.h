//
//  AlyaValidators.h
//  Objective-C-Utils
//
//  Created by Alexandra Pozdnyakova on 29/07/2014.
//  Copyright (c) 2014 Alexandra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AlyaValidators : NSObject

+ (BOOL)checkPassword:(NSString *)password error:(NSError **)error;
+ (BOOL)checkEmail:(NSString *)email error:(NSError **)error;

@end
