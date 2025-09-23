//
//  LogoutForm.swift
//  learn-swiftui
//
//  Created by Nguyen Luong Nam on 23/9/25.
//

import SwiftUI

struct LogoutForm: View {
    @Binding var appName: String
    @Binding var userName: String
    var logout: () -> Void
    var body: some View {
        VStack {
            Text("App Name: \(appName)")
            Text("Hello, \(userName)")
            Button("Logout") {
                logout()
            }
        }
    }
}
