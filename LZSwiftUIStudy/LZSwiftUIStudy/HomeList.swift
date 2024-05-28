//
//  HomeList.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/24.
//

import SwiftUI
import UIKit

struct HomeList: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("特殊视图")) {
                    NavigationLink(
                        destination: WebViewPage(),
                        label: {
                            PageRow(title: "webView", subTitle: "用户展示一个打开的网页")
                        })
                    NavigationLink {
                        ControllerPage<UIKitController>()
                    } label: {
                        PageRow(title: "UIViewController", subTitle: "打开 UIViewController")
                    }
                    NavigationLink {
                        SpacerPage()
                    } label: {
                        PageRow(title: "Spacer", subTitle: "一个空白占用视图,为了方便展示,已用黄色标出")
                    }

                }
                
                
                Section(header: Text("基础控件")) {
                    NavigationLink(
                        destination: TextLabelView(),
                        label: {
                            PageRow(title: "Text&Label", subTitle: "")
                        })
                    
                    NavigationLink(
                        destination: TextSecureFieldDemo(),
                        label: {
                            PageRow(title: "TextField & SecureField", subTitle: "")
                        })
                    
                    NavigationLink(
                        destination: ImageDemo(),
                        label: {
                            PageRow(title: "Image", subTitle: "")
                        })
                    
                    NavigationLink(
                        destination: ButtonLinkDemo(),
                        label: {
                            PageRow(title: "button link", subTitle: "")
                        })
                }
                

            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Example"), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                print("clicked")
            }, label: {
                Text("Right").foregroundColor(.orange)
            }))
        }

    }
}

#Preview {
    HomeList()
}
