//
//  Slide14_Color_Picker.swift
//  learn-swiftui
//
//  Created by Mac mini on 25/9/25.
//

import SwiftUI

struct Slide14_Color_Picker: View {
    @State private var color: Color = .clear
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        VStack {
            Image(systemName: "lock.fill")
                .padding()
                .background(color)
            
            ColorPicker(selection: $color,supportsOpacity: false, label: {
                Label("Pick a color", systemImage: "paintpalette")
            })
            
        }.padding()
    }
}

#Preview {
    Slide14_Color_Picker()
}
