//
//  ContentView.swift
//  learn-swiftui
//
//  Created by Mac mini on 17/9/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var appTheme2 = AppTheme(textColor: .blue)
    @StateObject var appTheme1 = AppTheme(textColor: .red)
    
    var body: some View {
        return LoginView()
    }
}

#Preview {
    ContentView()
}
