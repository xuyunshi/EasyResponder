//
//  TextifledView.swift
//  EasyResponder_Example
//
//  Created by 许允是 on 2019/12/5.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

let kIdentifierTestValueChanged = "kIdentifierTestValueChanged"

class TextifledView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(textField)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        textField.frame = bounds
    }

    lazy var textField: UITextField = {
        let f = UITextField(frame: .zero)
        f.placeholder = "your could type here"
        f.backgroundColor = .cyan
        f.transferEasyEventWithIdentifier(kIdentifierTestValueChanged, for: .editingChanged)
        return f
    }()
}
