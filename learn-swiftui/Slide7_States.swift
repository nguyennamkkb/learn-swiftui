//
//  Slide7_States.swift
//  learn-swiftui
//
//  Created by Mac mini on 20/9/25.
//

import SwiftUI

struct Slide7_States: View {
    @State private var isOn: Bool = false
    var body: some View {
        VStack(spacing: 12){
            Text(isOn ? "Dang mo den" : "dang tat den")
                
                
            Image(systemName: "lightbulb")
                .font(.largeTitle)
                .symbolVariant(isOn ? .fill : .none)
                .foregroundStyle(isOn ? .yellow : .blue)
            
            Toggle(isOn: $isOn){
                Text("Tao den")
            }
            .labelsHidden()
            
        }
    }
}

#Preview {
    Slide7_States()
}
