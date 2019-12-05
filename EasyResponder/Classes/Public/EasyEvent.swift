//
//  EasyResponderConvertable.swift
//  EasyResponder
//
//  Created by 许允是 on 2019/12/4.
//

import Foundation

public protocol EasyEvent {

    var identifier: String { get }

    var sourceView: UIView { get }
    
    var info: [String: Any] { get }
    
    mutating func insertInfo(_ newInfo: [String: Any])
}
