# gcovFlushAdapter

[![CI Status](https://img.shields.io/travis/chiyun1/gcovFlushAdapter.svg?style=flat)](https://travis-ci.org/chiyun1/gcovFlushAdapter)
[![Version](https://img.shields.io/cocoapods/v/gcovFlushAdapter.svg?style=flat)](https://cocoapods.org/pods/gcovFlushAdapter)
[![License](https://img.shields.io/cocoapods/l/gcovFlushAdapter.svg?style=flat)](https://cocoapods.org/pods/gcovFlushAdapter)
[![Platform](https://img.shields.io/cocoapods/p/gcovFlushAdapter.svg?style=flat)](https://cocoapods.org/pods/gcovFlushAdapter)

解决升级Xcode13, 检测代码覆盖度时，会出`Undefined symbol: ___gcov_flush` 这个错误的问题。在项目Podfile里加入这个pod库后，就可以正常使用了。原因是`___gcov_flush`这个方法在Xcode13中已经从特定的系统库中移除了，所以找了一个旧的库封装了一下。目前framework只做了x64架构的。

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

gcovFlushAdapter is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'gcovFlushAdapter'
```

## Author

chiyun1, chiyunbubu@gmail.com

## License

gcovFlushAdapter is available under the MIT license. See the LICENSE file for more info.
