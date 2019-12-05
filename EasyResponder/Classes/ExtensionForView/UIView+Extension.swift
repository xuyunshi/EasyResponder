//
//  UIView+Extension.swift
//  EasyResponder
//
//  Created by 许允是 on 2019/12/5.
//

import Foundation

private var es_point_identifier: Void?

extension UIView {
    
    var es_identifier: String? {
        get {
            return objc_getAssociatedObject(self, &es_point_identifier) as? String
        }
        set {
            objc_setAssociatedObject(self, &es_point_identifier, newValue, .OBJC_ASSOCIATION_COPY_NONATOMIC)
        }
    }
}
