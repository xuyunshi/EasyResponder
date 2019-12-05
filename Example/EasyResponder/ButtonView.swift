//
//  ButtonView.swift
//  EasyResponder_Example
//
//  Created by 许允是 on 2019/12/5.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

let kIdentifierTestButtonClick = "kIdentifierTestButtonClick"

class ButtonView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .black
        
        let b = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        addSubview(b)
        b.backgroundColor = .red
        
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        btn.backgroundColor = .cyan
        b.addSubview(btn)
        
        btn.transferEasyEventWithIdentifier(kIdentifierTestButtonClick, for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}
