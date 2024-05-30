//
//  GCPresentedView.swift
//  GCSheetModalView
//
//  Created by GarveyCalvin on 2020/2/13.
//  Copyright © 2020 GarveyCalvin. All rights reserved.
//

import SwiftUI

struct GCPresentedView: View {
    
//    在SwiftUI中，通过@Environment属性可以访问一些环境变量，例如@EnvironmentObject用于访问全局状态
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        Button(action: {
            self.mode.wrappedValue.dismiss()
        }, label: {
            Text("Dismiss")
        })
    }
}

struct GCPresentedView_Previews: PreviewProvider {
    static var previews: some View {
        GCPresentedView()
    }
}
