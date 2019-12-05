//
//  CommonHandlerVC.swift
//  EasyResponder_Example
//
//  Created by 许允是 on 2019/12/5.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import EasyResponder

class CommonHandlerVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(label)
    }

    func sizeLabelWithText(_ text: String) {
        
        label.text = text
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height
        let size = label.sizeThatFits(CGSize(width: Double(screenWidth - 50), height: 10))
        label.bounds = CGRect(origin: .zero, size: size)
        label.center = CGPoint(x: screenWidth / 2, y: screenHeight - 100)
        
        label.alpha = 0.3
        UIView.animate(withDuration: 0.3) {
            self.label.alpha = 1
        }
    }
    
    lazy var label: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .light)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
}

extension CommonHandlerVC: EasyEventHandler {
    
    func handle(_ event: EasyEvent) -> Bool {
        sizeLabelWithText("identifier: \(event.identifier)\n sourceView: \(event.sourceView)")
        return true
    }
}
