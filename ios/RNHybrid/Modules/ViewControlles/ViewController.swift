//
//  ViewController.swift
//  RNHybrid
//
//  Created by Baird-weng on 2020/2/16.
//  Copyright © 2020 bw. All rights reserved.
//

import UIKit
import React
import SnapKit
class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "原生跳转到RN"
        self.view.backgroundColor = .white

        let btn1 = UIButton()
        btn1.setTitle("页面1", for: .normal)
        btn1.backgroundColor = .blue
        self.view.addSubview(btn1)
        btn1.snp.makeConstraints { (make) in
            make.width.height.equalTo(100)
            make.centerY.equalTo(self.view).offset(-100);
            make.centerX.equalTo(self.view)
        }
        btn1.addTarget(self, action: #selector(openPageOne), for: .touchUpInside)
                
        let btn2 = UIButton()
        btn2.setTitle("页面2", for: .normal)
        btn2.backgroundColor = .blue
        self.view.addSubview(btn2)
        btn2.snp.makeConstraints { (make) in
            make.width.height.equalTo(100)
            make.centerX.equalTo(self.view)
            make.top.equalTo(btn1.snp.bottom).offset(30);
        }
        btn2.addTarget(self, action: #selector(openPageTwo), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    @objc func openPageOne () {
        let page = RNBaseViewController()
        self.navigationController?.pushViewController(page, animated: true)
    }
    @objc func openPageTwo () {
        let page = RNBaseViewController()
        page.moduleName = "DetailsModule"
        self.navigationController?.pushViewController(page, animated: true)
    }
    
    @objc func clickOntheTestBtn() {

    }


}

