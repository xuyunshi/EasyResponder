//
//  UITextView+Extension.swift
//  EasyResponder
//
//  Created by 许允是 on 2019/12/5.
//

import Foundation

class _Handler: NSObject, NSTextStorageDelegate {
    
    var inspiredHandler: (()->Void)?
    
    func textStorage(_ textStorage: NSTextStorage, didProcessEditing editedMask: NSTextStorage.EditActions, range editedRange: NSRange, changeInLength delta: Int) {
        
        inspiredHandler?()
    }
}

private var _privateTextStorageDelegateKey: Void?

extension UITextView {
    
    public func transferEasyTextChangedEventWithIdentifier(_ identifier: String) {
        
        let delegate = _Handler()
        objc_setAssociatedObject(self, &_privateTextStorageDelegateKey, delegate, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        textStorage.delegate = delegate
        delegate.inspiredHandler = { [weak self] in
            
            guard let textV = self else { return }
            let event = AnyEasyEvent(identifier: identifier, sourceView: textV)
            self?.transEasyEvent(event)
        }
    }
}
