//
//  CryptoUtils.m
//  Objective-C-Utils
//
//  Created by Alexandra Pozdnyakova on 23/07/2014.
//  Copyright (c) 2014 Alexandra. All rights reserved.
//

#import "CryptoUtils.h"
#include <CommonCrypto/CommonHMAC.h>

@implementation CryptoUtils

+ (NSString*)sha256WithData:(NSString *)data key:(NSString *)key
{
    const char *cKey  = [key cStringUsingEncoding:NSASCIIStringEncoding];
    const char *cData = [data cStringUsingEncoding:NSASCIIStringEncoding];
    
    unsigned char cHMAC[CC_SHA256_DIGEST_LENGTH];
    
    CCHmac(kCCHmacAlgSHA256, cKey, strlen(cKey), cData, strlen(cData), cHMAC);
    
    NSData *HMAC = [[NSData alloc] initWithBytes:cHMAC
                                          length:sizeof(cHMAC)];
    
    NSString *str = [HMAC base64EncodedStringWithOptions:0];
    
    return str;
}

+ (NSString *)sha1WithData:(NSString *)inputData
{
    NSData *data = [inputData dataUsingEncoding:NSUTF8StringEncoding];
    uint8_t digest[CC_SHA1_DIGEST_LENGTH];
    
    CC_SHA1(data.bytes, (CC_LONG)data.length, digest);
    
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    
    for (int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++)
    {
        [output appendFormat:@"%02x", digest[i]];
    }
    
    return output;
}

@end
