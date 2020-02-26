//
//  RNNetworkModule.swift
//  RNHybrid
//
//  Created by Baird-weng on 2020/2/25.
//  Copyright © 2020 bw. All rights reserved.
//

import UIKit
import React
import Alamofire

@objc(RNNetWorkModule)
class RNNetWorkModule: NSObject {
    
    @objc func postRequest(_ url:String,params:Dictionary<String, Any>, resolve:@escaping RCTPromiseResolveBlock, rejecter: @escaping RCTPromiseRejectBlock) ->Void{
        
        AF.request(url,method: .post,parameters: params,encoding: URLEncoding.default).responseJSON { (response) in
            switch response.result {
            case .success(let json):
                resolve(json)
            case .failure(let error):
                rejecter(String(error.responseCode ?? 0),error.localizedDescription ,error)
                break
            }
        }
    }
    @objc func getRequest(_ url:String,params:Dictionary<String, Any>, resolve:@escaping RCTPromiseResolveBlock, rejecter: @escaping RCTPromiseRejectBlock) ->Void{
        
        AF.request(url,method: .get,parameters: params,encoding: URLEncoding.default).responseJSON { (response) in
            switch response.result {
            case .success(let json):
                resolve(json)
            case .failure(let error):
                rejecter(String(error.responseCode ?? 0),error.localizedDescription ,error)
                break
            }
        }
    }
}
