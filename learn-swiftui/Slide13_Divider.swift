//
//  Slide13_Divider.swift
//  learn-swiftui
//
//  Created by Mac mini on 25/9/25.
//

import SwiftUI

struct Slide13_Divider: View {
    var body: some View {
        VStack {
            Text("1. Divider example below")
            Divider()
        }
        .background(Color.red)
        .padding()
        
        
        // chi ap dung nen
        Group {
            Text("2. Group example below")
            Divider()
        }.background(.yellow)
        
        HStack {
            Text("3. Hstack example")
            Divider()
                .background(.red)
                .frame(height: 40)
            Image(systemName: "lock")
        }
    }
}

#Preview {
    Slide13_Divider()
}
