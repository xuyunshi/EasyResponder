import Foundation

extension UIResponder {
    
    func transEasyEvent(_ event: EasyEvent) {
        
        if let handler = self as? EasyEventHandler {
            let processed = handler.handle(event)
            if processed {
                if handler.stopTransferIfEventHandled {
                    return
                }
            }
        }
        next?.transEasyEvent(event)
    }
}
