//
//  HomeList.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/24.
//

import SwiftUI

struct HomeList: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("特殊视图")) {
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            PageRow(title: "webView", subTitle: "用户展示一个打开的网页")
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
