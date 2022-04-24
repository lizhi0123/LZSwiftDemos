//
//  LZSDKManager.swift
//  LZSDK
//
//  Created by LiZhi on 2022/4/23.
//

import Foundation
import UIKit

open class LZSDKManager {
    public init() {}

    public func sdk_print() {
        print("荔枝 sdk print 2 简书：https://www.jianshu.com/u/2dc174d83679")
    }

    public func sdk_image() -> UIImage? {
        // class: 库里 任意class
        let bundle = Bundle(for: LZSDKManager.self)
        let image = UIImage(named: "hi", in: bundle, compatibleWith: nil)
        return image
    }

    public func staticSdk_image() -> UIImage? {
        // class: 库里 任意class
        let bundle = Bundle(for: LZSDKManager.self)
        let path = bundle.path(forResource: "LZSDK", ofType: "framework")
        if let path = path {
            let sdkBundle = Bundle(path: path)
            let image = UIImage(named: "hi", in: sdkBundle, compatibleWith: nil)
            return image
        }
        return nil
    }
}
