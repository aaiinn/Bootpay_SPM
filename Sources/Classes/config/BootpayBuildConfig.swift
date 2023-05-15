//
//  BootpayBuildConfig.swift
//  SwiftUIBootpay (iOS)
//
//  Created by Taesup Yoon on 2021/05/10.
//
import Foundation
#if canImport(UIKit)
import UiKit

#if os(macOS)
public typealias BTNavigationController = NSPageController
public typealias BTView = NSView
public typealias BTViewController = NSViewController
#elseif os(iOS)
public typealias BTNavigationController = UINavigationController
public typealias BTView = UIView
public typealias BTViewController = UIViewController
#endif

struct BootpayBuildConfig { 
    static let DEBUG = false
    static let VERSION = "4.4.0"
}
#endif
