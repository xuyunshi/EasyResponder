//
//  EventHandler.swift
//  EasyResponder
//
//  Created by 许允是 on 2019/12/5.
//

import Foundation

public protocol EasyEventHandler: UIResponder {
    
    var stopTransferIfEventHandled: Bool { get }
    
    func handle(_ event: EasyEvent) -> Bool
}

extension EasyEventHandler {
    
    public var stopTransferIfEventHandled: Bool {
        return false
    }
}
