//
//  ControllerPage.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/28.
//

import Foundation
import SwiftUI
import UIKit

struct ControllerPage<T: UIViewController> : UIViewControllerRepresentable {
   
    typealias UIViewControllerType = UIViewController
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ControllerPage>) -> UIViewController {
        return T()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<ControllerPage>) {
        debugPrint("\(#function):\(type(of: T.self))")
    }
    
    
}
