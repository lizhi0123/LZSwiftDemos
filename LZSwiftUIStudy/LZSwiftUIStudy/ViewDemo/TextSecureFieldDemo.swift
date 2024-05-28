//
//  TextFieldDemo.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/27.
//

import Foundation
import SwiftUI

struct TextSecureFieldDemo: View{
    
    @State var name:String = "LiZhi"
    @State private var fullText: String = "This is some editable text 123 456 qwer"

    
    var body: some View {
        VStack {
            TextField("Name's placeholder", text: $name)
            TextField("Name's placeholder", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            
            
            SecureField("pwd", text: $name).padding()
            TextEditor(text: $fullText)
                .background(Color.red)
                .frame(height: 100)
            
            VStack(alignment: .leading, spacing: 0, content: {
                HStack(content: {
                    Text("昵称:")
                        .foregroundColor(.secondary)
                        .background(Color.red)
                    TextField("请输入", text: $name,onEditingChanged: { changed in
                        print("改变")
                    })
                    .background(Color.blue)
                    .padding(EdgeInsets(top: 5, leading: 5, bottom: 10, trailing: 30))
                    .frame(height: 80)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                        
    //                    .onChange(of: name) { newValue in
    //                                 print ("myMoney: \(newValue)")
    //                             }
    //                    .onCommit
                })
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                
    //            Spacer()
            })
            .background(Color.yellow)
            .offset(y:-50)
        }.navigationTitle(Text("TextField"))
        
        
        
  
    }
}

#Preview {
    TextSecureFieldDemo(name: "LI zhi name")
}
