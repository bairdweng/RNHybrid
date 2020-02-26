//
//  RNRTModule.swift
//  RNHybrid
//
//  Created by Baird-weng on 2020/2/25.
//  Copyright © 2020 bw. All rights reserved.
//

import UIKit
@objc(RNRTModule)

class RNRTModule: NSObject {
    @objc func open(_ name:String, params:Dictionary<String, Any>) ->Void{
        print("name:%@\nparams:%@",name,params)
        let topViewController = RNGlobalModel.single.topViewContoller();
        topViewController?.present(NativeViewController(), animated: true, completion: nil)
    }
    
    
}
