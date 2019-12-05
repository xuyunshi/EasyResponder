//
//  UIButton+Extension.swift
//  EasyResponder
//
//  Created by 许允是 on 2019/12/5.
//

import Foundation

extension UIControl {
    
    public func transferEasyEventWithIdentifier(_ identifier: String, for event: UIControl.Event) {
        
        es_identifier = identifier
        addTarget(self, action: #selector(es_callBack(_:)), for: event)
    }
    
    @objc func es_callBack(_ sender: UIControl) {
        
        guard let identifier = self.es_identifier else { return }
        let event = AnyEasyEvent(identifier: identifier, sourceView: self)
        transEasyEvent(event)
    }
}
