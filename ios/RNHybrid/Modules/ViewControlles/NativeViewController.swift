//
//  NativeViewController.swift
//  RNHybrid
//
//  Created by Baird-weng on 2020/2/25.
//  Copyright © 2020 bw. All rights reserved.
//

import UIKit
import SnapKit
class NativeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white

        let textBtn = UIButton()
        self.view.addSubview(textBtn)
        textBtn.setTitle("我是原生页面", for: .normal)
        textBtn.snp.makeConstraints { (make) in
            make.width.height.equalTo(200)
            make.center.equalTo(self.view)
        }
        textBtn.backgroundColor = .red;
        textBtn.addTarget(self, action: #selector(close), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    @objc func close () {
        self.dismiss(animated: true, completion: nil)
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
