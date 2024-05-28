//
//  NavigationDemo.swift
//  LZSwiftUIStudy
//
//  Created by LiZhi on 2024/5/27.
//

import Foundation
import SwiftUI

struct NavigationDemo:View {
    
    @State var selection  = 1
    var body: some View {
        
        /*
        NavigationView {
            Text("SwiftUI").padding()
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            print("clicked")
                        } label: {
                            Image(systemName: "square.and.pencil")
                        }

                    }
                }
        }
        */
        
        /*
        NavigationView {
            Text("SwiftUI2").padding()
                .toolbar {
                    ToolbarItem(placement: .primaryAction) {
                        Button {

                        } label: {
                            Image(systemName: "square.and.pencil")
                        }

                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {

                        } label: {
                            Image(systemName: "square.and.pencil")
                        }

                    }
                }
        }
         */
        NavigationView {
            Form {
                Section {
                    Picker(selection: $selection, label:
                        Text("Picker Name")
                        , content: {
                            Text("Value 1").tag(0)
                            Text("Value 2").tag(1)
                            Text("Value 3").tag(2)
                            Text("Value 4").tag(3)
                    })
                }
            }
        }
    }
}

#Preview {
    NavigationDemo()
}

struct NavigationDetail: View {
    var body: some View {
        Text("Detail page")
    }
}

#Preview {
    NavigationDemo()
}
