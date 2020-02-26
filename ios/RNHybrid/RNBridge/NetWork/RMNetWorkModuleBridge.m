//
//  RMNetWorkModuleBridge.m
//  RNHybrid
//
//  Created by Baird-weng on 2020/2/25.
//  Copyright © 2020 bw. All rights reserved.
//

#import "RMNetWorkModuleBridge.h"
#import <React/RCTBridgeModule.h>


@implementation RMNetWorkModuleBridge

@end


@interface RCT_EXTERN_MODULE(RNNetWorkModule, NSObject)


RCT_EXTERN_METHOD(
                postRequest:(NSString *)name
                params:(id)params
                resolve:(RCTPromiseResolveBlock)resolve
                rejecter:(RCTPromiseRejectBlock)rejecter
)

RCT_EXTERN_METHOD(
                getRequest:(NSString *)name
                params:(id)params
                resolve:(RCTPromiseResolveBlock)resolve
                rejecter:(RCTPromiseRejectBlock)rejecter
)

- (dispatch_queue_t)methodQueue {
    return dispatch_queue_create("com.facebook.React.AsyncLocalStorageQueue", DISPATCH_QUEUE_SERIAL);
}

@end
