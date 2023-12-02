# CustomToolBar 🛠️

[![Swift Version](https://img.shields.io/badge/swift-5.0-orange.svg)](https://swift.org/)
[![Platform](https://img.shields.io/badge/platform-ios-lightgrey.svg)](https://developer.apple.com/ios/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

CustomToolBar is a delightful and customizable toolbar SwiftUI package for your iOS app, bringing elegance and functionality to your user interface. 🚀

## Features 🌟

- **Sleek Design:** Crafted with a sleek and modern design for an appealing UI.
- **Flexible Customization:** Customize toolbar items to suit your app's aesthetics and functionality.
- **SwiftUI Powered:** Built using SwiftUI for a native and seamless integration into your app.

## Usage 🛠️

```swift
CustomToolBar(
    toolBarContent: [
        CustomToolBarItem(title: "Home", icon : "house"),
        CustomToolBarItem(title: "Settings", icon : "line.3.horizontal.decrease.circle"),
        CustomToolBarItem(title: "Profile", icon : "person"),
        CustomToolBarItem(title: "Share", icon : "square.and.arrow.up")
    ]
)
