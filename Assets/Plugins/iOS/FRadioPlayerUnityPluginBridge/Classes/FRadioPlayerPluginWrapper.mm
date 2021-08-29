//
//  FRadioPlayerPluginWrapper.m
//  FRadioPlayerUnityPluginBridge
//
//  Created by GoEun Jeong on 2021/08/29.
//

#import <Foundation/Foundation.h>

#import <Foundation/Foundation.h>
#import <FRadioPlayer/FRadioPlayer.h>
#import "FRadioPlayerPluginWrapper.h"
#import "FRadioPlayerPluginUnityProtocol.h"

#pragma mark - String Helpers


static NSString * const NSStringFromCString(const char *string)
{
    if (string != NULL) {
        return [NSString stringWithUTF8String:string];
    } else {
        return nil;
    }
}

static const char * const CStringFromNSString(NSString *string)
{
    if (string != NULL) {
        return [string cStringUsingEncoding:NSUTF8StringEncoding];
    } else {
        return nil;
    }
}

#pragma mark - C interface

extern "C" {
    void __IOS_SetRadioURL(const char* str) {
        NSString *strNS = NSStringFromCString(str);
        [[FRadioPlayer shared] setRadioURL: [NSURL URLWithString:strNS]];
    }

    void __IOS_Play() {
        [[FRadioPlayer shared] play];
    }

    void __IOS_Stop() {
        [[FRadioPlayer shared] stop];
    }
}
