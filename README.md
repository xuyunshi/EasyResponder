# EasyResponder

![未命名store_1024pt](https://raw.githubusercontent.com/xuyunshi/EasyResponder/master/Example/EasyResponder/Images.xcassets/AppIcon.appiconset/%E6%9C%AA%E5%91%BD%E5%90%8Dstore_1024pt.png)

##Summary
你的页面里是否有如同图标所示的多层用户操作传值困惑？
- Delegate?
- Block?
- Notification?
- ???

本仓库借助UIRespondChain，直接将用户操作事件以EasyEvent形式在RespondChain中传递。

从此不再困惑点击事件用delegate还是block了。

## Example

```swift
let btn = UIButton(type: .custom)
btn.transferEasyEventWithIdentifier("foo_id", for: .touchUpInside)
```


## Requirements
iOS 9.0

Swift 5.0

## Installation

```ruby
pod 'EasyResponder'
```

## Author

许允是, 405029644@qq.com