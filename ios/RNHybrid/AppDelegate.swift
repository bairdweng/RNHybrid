//
//  AppDelegate.swift
//  RNHybrid
//
//  Created by Baird-weng on 2020/2/16.
//  Copyright © 2020 bw. All rights reserved.
//

import UIKit
import React
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate{
    var window: UIWindow?
    var rnbridge:RCTBridge!
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let url = URL.init(string: RNGlobalModel.single.getRNRootURL())
        rnbridge = RCTBridge(bundleURL: url , moduleProvider: nil, launchOptions: launchOptions)
        
        let rootVc = TabbarViewController()
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = rootVc
        self.window?.makeKeyAndVisible()
        // Override point for customization after application launch.
        return true
    }

}

