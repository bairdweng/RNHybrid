//
//  RNGlobalModel.swift
//  RNHybrid
//
//  Created by Baird-weng on 2020/2/24.
//  Copyright © 2020 bw. All rights reserved.
//

import UIKit
import React
class RNGlobalModel: NSObject {
    static let single = RNGlobalModel();
    let rnModuleName = "HomeModlue"
    func getRNRootURL() ->String{
//        #if DEBUG
////            return "http://localhost:8081/index.bundle?platform=ios"
//            return RCTBundleURLProvider.sharedSettings()?.jsBundleURL(forBundleRoot: "index", fallbackResource: nil)
//        #else
//
//            return Bundle.main.url(forResource: "main", withExtension: "jsbundle")
//        #endif
        let url = RCTBundleURLProvider.sharedSettings()?.jsBundleURL(forBundleRoot: "index", fallbackResource: nil) ?? URL(string: "")!
        
//        print("获取的url======",url)
//        return url
        return url.absoluteString


    }
    let appDelegate = UIApplication.shared.delegate as? AppDelegate;
    
    func topViewContoller() -> UIViewController? {
        guard let root = UIApplication.shared.keyWindow?.rootViewController else {
            return nil
        }
        return topViewController(root: root)
    }
    
    func topViewController(root: UIViewController) -> UIViewController {
       
        var top: UIViewController = root

        while true {
            
            if let child = top.children.last {
                top = child
                continue
            }
            
            if let nav = top as? UINavigationController {
                if let vc = nav.viewControllers.last {
                    top = vc
                    continue
                }
            }
            
            if let tab = top as? UITabBarController {
                if let vc = tab.selectedViewController {
                    top = vc
                    continue
                }
            }
            
            if let presented = top.presentedViewController {
                top = presented
                continue
            }
            
           break
        }

       return top
    }
    
  
}
