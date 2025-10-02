//
//  Video42_Manage_ignore_safearea.swift
//  learn-swiftui
//
//  Created by Mac mini on 2/10/25.
//

import SwiftUI

struct Video42_Manage_ignore_safearea: View {
    private var gradient: [Color] = [
        .blue, .red,
    ]
    
    private var bacgGround: some View {
        LinearGradient(
            colors: gradient,
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        
    }
        
    var body: some View {
        NavigationView {
            VStack {
                bacgGround
            }
        }
    }
}

#Preview {
    Video42_Manage_ignore_safearea()
}
