//
//  LZSDKManager.swift
//  LZSDK
//
//  Created by LiZhi on 2022/4/23.
//

import Foundation
import UIKit

open class LZSDKManager {
   public init(){
        
    }
   public func sdk_print() {
        print("荔枝 sdk print 2")
    }
    
    public func sdk_image() -> UIImage?{
        // class: 库里 任意class
        let bundle = Bundle(for: LZSDKManager.self);
        let image = UIImage(named: "hi", in: bundle, compatibleWith: nil)
        return image
    }
}
