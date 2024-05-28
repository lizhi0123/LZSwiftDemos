//
//  WebViewPage.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/28.
//

import Foundation
import SwiftUI
import WebKit

struct WebViewPage: UIViewRepresentable {
    func makeUIView(context: Context) -> some WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        let req = URLRequest(url: URL(string: "https://www.apple.com")!)
        uiView.load(req)
    }
    
}

#Preview(body: {
    WebViewPage()
})
