//
//  TextfieldVC.swift
//  EasyResponder_Example
//
//  Created by 许允是 on 2019/12/5.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import EasyResponder

class TextfieldVC: CommonHandlerVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(TextifledView(frame: CGRect(x: 100, y: 100, width: 200, height: 50)))
    }
}
