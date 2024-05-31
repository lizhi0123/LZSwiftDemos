//
//  RootTabItem.swift
//  LZWechat
//
//  Created by LiZhi on 2024/5/31.
//

import SwiftUI

enum RootTabItemType: Int {
    case chat
    case contact
    case discover
    case me
    
    var image: Image {
        switch self {
        case .chat:     return Image("root_tab_chat")
        case .contact:  return Image("root_tab_contact")
        case .discover: return Image("root_tab_discover")
        case .me:       return Image("root_tab_me")
        }
    }
    
    var selectedImage: Image {
        switch self {
        case .chat:     return Image("root_tab_chat_selected")
        case .contact:  return Image("root_tab_contact_selected")
        case .discover: return Image("root_tab_discover_selected")
        case .me:       return Image("root_tab_me_selected")
        }
    }
    
    var title: String {
        switch self {
        case .chat:     return "微信"
        case .contact:  return "通讯录"
        case .discover: return "发现"
        case .me:       return "我"
        }
    }
}

struct RootTabItem:View {
    let type: RootTabItemType
    let selection: Int
    
    var body: some View{
        VStack {
            if type.rawValue == selection {
                type.selectedImage
            }else {
                type.image
            }
            
            Text(type.title)
        }
    }
    private var rootTabItemType: RootTabItemType { RootTabItemType(rawValue: selection)!}
}

#Preview {
    RootTabItem(type: RootTabItemType.chat, selection: 0)
}
