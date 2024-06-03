//
//  ChatListRow.swift
//  LZWechat
//
//  Created by LiZhi on 2024/5/31.
//

import SwiftUI

struct ChatListRow:View {
    
    var chatModel: ChatModel?
    
    var body: some View {
        HStack(spacing: 12, content: {
            Image("data_avatar1")
                .resizable()
                .frame(width: 48,height: 48)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5, content: {
                HStack(alignment:.top, content: {
                    Text(chatModel?.name ?? "")
                        .font(.system(size: 16,weight: .regular))
                        .foregroundColor(.primary)
                    Spacer()
                    Text("18:14")
                        .font(.system(size: 10))
                        .foregroundColor(.secondary)
                })
                Text("描述")
                    .lineLimit(1)
                    .font(.system(size: 14))
                    .foregroundColor(.secondary)
            })
        })
        .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
    }
}

#Preview {
    ChatListRow(chatModel: ChatModel(name: "zhangsan"))
}
