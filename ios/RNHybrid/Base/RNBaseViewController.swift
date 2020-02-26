//
//  BaseRNViewController.swift
//  RNHybrid
//
//  Created by Baird-weng on 2020/2/16.
//  Copyright © 2020 bw. All rights reserved.
//

import UIKit
import React

class RNBaseViewController: UIViewController {
    var rootView:UIView?
    var moduleName:String?
    override func viewDidLoad() {
        super.viewDidLoad()

        let rootView = RCTRootView(bridge: RNGlobalModel.single.appDelegate!.rnbridge!, moduleName: self.moduleName ?? RNGlobalModel.single.rnModuleName, initialProperties: nil)
        self.view = rootView;
        self.rootView = rootView;
        self.edgesForExtendedLayout = UIRectEdge.init(rawValue: 0)
        // Do any additional setup after loading the view.
    }
    
    deinit {
        self.rootView?.removeFromSuperview()
        self.rootView = nil
        print("视图被销毁")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
