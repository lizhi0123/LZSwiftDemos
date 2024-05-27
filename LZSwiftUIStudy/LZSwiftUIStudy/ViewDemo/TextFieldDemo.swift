//
//  TextFieldDemo.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/27.
//

import Foundation
import SwiftUI

struct TextFieldDemo: View{
    
    @State var name:String = "LiZhi"
    @State private var fullText: String = "This is some editable text 123 456 qwer"

    
    var body: some View {
        TextField("Name's placeholder", text: $name)
        TextField("Name's placeholder", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
        
        
        SecureField("pwd", text: $name).padding()
        TextEditor(text: $fullText)
    }
}

#Preview {
    TextFieldDemo(name: "LI zhi name")
}
