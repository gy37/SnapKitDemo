//
//  ViewController.swift
//  SnapKitDemo
//
//  Created by smarfid on 2018/9/26.
//  Copyright © 2018 smarfid. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    lazy var statusLabel: UILabel = {
        let statusLabel = UILabel()
        statusLabel.backgroundColor = UIColor.yellow
        statusLabel.text = "当前状态正常"
        return statusLabel
    }()
    
    lazy var controlButton: UIButton = {
        let controlButton = UIButton(type: .custom)
        controlButton.backgroundColor = UIColor.green
        controlButton.addTarget(self, action: #selector(changePosition), for: .touchUpInside)
        return controlButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(statusLabel)
        statusLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(50)
//            make.width.equalTo(100)
            make.width.equalTo(100).multipliedBy(3)
        }
        view.addSubview(controlButton)
        controlButton.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.width.equalTo(100)
            make.top.equalTo(statusLabel.snp.bottom).offset(20)
            make.height.equalTo(100)
        }
        
    }
    
    @objc func changePosition() {
        controlButton.snp.updateConstraints { (make) in
//            make.top.equalTo(statusLabel.snp.bottom).offset(CGFloat(arc4random_uniform(300)))
            make.left.equalTo(CGFloat(arc4random_uniform(300)))
        }
    }

    
}

