//
//  SystemInfo.swift
//  Common
//
//  Created by Nguyễn Nam on 4/8/19.
//  Copyright © 2019 Hypertech Mobile. All rights reserved.
//

import UIKit

public enum DeviceType {
	case iPhoneSE
	case iPhone678
	case iPhone678Plus
	case iPhone11Pro
	case iPhone11ProMax
	case iPhone12Pro
	case iPhone12ProMax
	
	fileprivate init?(_ rawValue: CGFloat?) {
		switch rawValue {
		case 568.0:
			self = .iPhoneSE
		case 667.0:
			self = .iPhone678
		case 736.0:
			self = .iPhone678Plus
		case 812.0:
			self = .iPhone11Pro
		case 896.0:
			self = .iPhone11ProMax
		case 844.0:
			self = .iPhone12Pro
		case 926.0:
			self = .iPhone12ProMax
		default:
			return nil
		}
	}
}

public class SystemInfo {
	// MARK: - ScreenInfo
	static let screenBounds 		= UIScreen.main.bounds
	static let screenWidth 			= UIScreen.main.bounds.width
	static let screenHeight 		= UIScreen.main.bounds.height
	static let screenNativeBounds 	= UIScreen.main.nativeBounds
	static let screenNativeWidth	= UIScreen.main.nativeBounds.width
	static let screenNativeHeight 	= UIScreen.main.nativeBounds.height
	static let statusBarHeight = UIApplication.shared.statusBarFrame.size.height
	static var safeAreaInsetTop: CGFloat {
		guard let window = UIApplication.shared.keyWindow else { return 0 }
		return window.safeAreaInsets.top
	}
	static var safeAreaInsetBottom: CGFloat {
		guard let window = UIApplication.shared.keyWindow else { return 0 }
		return window.safeAreaInsets.bottom
	}
	
	// MARK: - Device
	static var deviceType: DeviceType? {
		return DeviceType(screenHeight)
	}
}
