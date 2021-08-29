//
//  NSObject+FRadioPlayerPluginUnityProtocol.m
//  FRadioPlayerUnityPluginBridge
//
//  Created by GoEun Jeong on 2021/08/29.
//

#import <Foundation/Foundation.h>
#import "FRadioPlayerPluginUnityProtocol.h"
//#import "UnityInterface.h"

@implementation FRadioPlayerPluginUnityProtocol

- (void)radioPlayerWithPlayer:(FRadioPlayer * _Nonnull)player playbackStateDidChange:(enum FRadioPlaybackState)state {
    UnitySendMessage("FRadioPlayerUnityPlugin", "__fromnative_playerStateDidChange", "");
}

- (void)radioPlayerWithPlayer:(FRadioPlayer * _Nonnull)player playerStateDidChange:(enum FRadioPlayerState)state {
    UnitySendMessage("FRadioPlayerUnityPlugin", "__fromnative_playbackStateDidChange", "");
}

@end
