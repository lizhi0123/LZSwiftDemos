//
//  AlertPage.swift
//  Example
//
//  Created by 晋先森 on 2019/6/8.
//  Copyright © 2019 晋先森. All rights reserved.
//

import Foundation
import SwiftUI

struct AlertPage : View 
{
    @State private var showAlert = false
    var body: some View {
        Button("Tap to show alert") {
            showAlert = true
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Current Location Not Available"),
                message: Text("Your current location can’t be " +
                                "determined at this time."),
                primaryButton: .default(Text("Try Again"), action: {
                    print("--- tray again")
                }),
                secondaryButton: .destructive(Text("Delete"), action: {
                    print("--- delete clicked")
                })
            )
        }
    }
}

#if DEBUG
struct AlertPage_Previews : PreviewProvider {
    static var previews: some View {
        AlertPage()
    }
}
#endif
