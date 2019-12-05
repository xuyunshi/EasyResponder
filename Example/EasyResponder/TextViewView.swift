//
//  TextViewView.swift
//  EasyResponder_Example
//
//  Created by 许允是 on 2019/12/5.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

let kTextViewIdentifier = "kTextViewIdentifier"

class TextViewView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(textView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        textView.frame = bounds
    }
    
    lazy var textView: UITextView = {
        let view = UITextView(frame: .zero)
        view.backgroundColor = .black
        view.textColor = .white
        view.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        view.transferEasyTextChangedEventWithIdentifier(kTextViewIdentifier)
        return view
    }()
}
