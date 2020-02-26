//
//  TabbarViewController.swift
//  RNHybrid
//
//  Created by Baird-weng on 2020/2/25.
//  Copyright © 2020 bw. All rights reserved.
//

import UIKit

class TabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.setupViewControllers()
        // Do any additional setup after loading the view.
    }
    
    func setupViewControllers () {
        let homeViewControler = RNBaseViewController()
        homeViewControler.moduleName = "HomeModule";
        homeViewControler.tabBarItem = UITabBarItem(tabBarSystemItem: .recents, tag: 0)
 
        let personViewController = RNBaseViewController()
        personViewController.moduleName = "PersonModule"
        personViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .mostViewed, tag: 1)
        

        self.viewControllers = [homeViewControler,personViewController]
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
