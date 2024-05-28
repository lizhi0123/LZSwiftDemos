//
//  PageRow.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/28.
//

import SwiftUI

struct PageRow: View {
    private let title:String
    private let subTitle:String?
    
    init(title: String, subTitle: String? = nil) {
        self.title = title
        self.subTitle = subTitle
    }
    var body: some View {
        VStack(alignment: .leading, content: {
            Text(title).bold()
            if subTitle != nil {
                Text(subTitle!)
                    .font(.subheadline)
                    .opacity(0.5)
                    .lineLimit(nil)
            }
        })
    }
}

#if DEBUG

#Preview{
    PageRow(title: "标题",subTitle: "副标题")
}
#endif
