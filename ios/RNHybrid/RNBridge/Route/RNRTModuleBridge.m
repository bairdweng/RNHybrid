//
//  RNRTModuleBridge.m
//  RNHybrid
//
//  Created by Baird-weng on 2020/2/25.
//  Copyright © 2020 bw. All rights reserved.
//

#import "RNRTModuleBridge.h"
#import <React/RCTBridgeModule.h>

@implementation RNRTModuleBridge

@end



@interface RCT_EXTERN_MODULE(RNRTModule, NSObject)

RCT_EXTERN_METHOD(
                open:(NSString *)name
                params:(id)params
)

- (dispatch_queue_t)methodQueue {
    return dispatch_get_main_queue();
}


@end
