//
//  CryptoUtils.h
//  Objective-C-Utils
//
//  Created by Alexandra Pozdnyakova on 23/07/2014.
//  Copyright (c) 2014 Alexandra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CryptoUtils : NSObject

+ (NSString*)sha256WithData:(NSString *)data key:(NSString *)key;
+ (NSString *)sha1WithData:(NSString *)inputData;

@end
