//
//  ButtonVC.swift
//  EasyResponder_Example
//
//  Created by 许允是 on 2019/12/5.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import EasyResponder

class ButtonVC: CommonHandlerVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let  a = ButtonView(frame: CGRect(x: 100, y: 100, width: 300, height: 300))
        view.addSubview(a)
    }
}
