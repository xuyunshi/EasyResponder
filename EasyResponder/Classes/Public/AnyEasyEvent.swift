//
//  AnyEvent.swift
//  EasyResponder
//
//  Created by 许允是 on 2019/12/5.
//

import Foundation

struct AnyEasyEvent: EasyEvent {
    
    init(identifier: String, sourceView: UIView) {
        self.identifier = identifier
        self.sourceView = sourceView
    }
    
    public var identifier: String
    public var sourceView: UIView
    var info: [String : Any] = [:]
    
    mutating func insertInfo(_ newInfo: [String : Any]) {
        self.info.merge(newInfo) { return $1 }
    }
}
