//
//  Slide19_Checkbox.swift
//  learn-swiftui
//
//  Created by Nguyen Luong Nam on 25/9/25.
//

import SwiftUI

struct Slide19_Checkbox: View {
    @State private var isSelect: Bool = false
    var body: some View {
        VStack {
            Group {
                Toggle("Turn me on?", isOn: $isSelect)
                Text(isSelect ? "On" : "Off")
            }
            
            Group {
                Toggle("Turn me on?", isOn: $isSelect)
                    .labelsHidden()
                Text(isSelect ? "On" : "Off")
            }
            
            Group {
                Toggle( isOn: $isSelect){
                    Label(isSelect ? "is On" : "is Off", systemImage: "lightbulb")
                        .symbolVariant(isSelect ? .fill : .none)
                        .foregroundStyle(isSelect ? .blue : .red)
                    
                }
                .toggleStyle(.button)
                    
            }
            
            Divider()
                .foregroundStyle(.red)
              
            
            Group {
                Toggle("", isOn: $isSelect)
                    .labelsHidden()
                    .toggleStyle(.checklist)
                    .font(.title)
                    
            }
            
        }
    }
}

struct ToggleCheckboxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button{
            configuration.isOn.toggle()
        } label: {
            Image(systemName: "checkmark.square")
                .symbolVariant(configuration.isOn ? .fill : .none)
               
        }
        .tint(configuration.isOn ? .blue : .black)
    }
}

extension ToggleStyle where Self == ToggleCheckboxStyle {
    static var checklist: ToggleCheckboxStyle{.init()}
}

#Preview {
    Slide19_Checkbox()
}
