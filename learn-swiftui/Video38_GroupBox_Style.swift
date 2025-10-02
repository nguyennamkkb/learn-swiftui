//
//  Video38_GroupBox_Style.swift
//  learn-swiftui
//
//  Created by Mac mini on 2/10/25.
//

import SwiftUI

struct Video38_GroupBox_Style: View {
    var body: some View {
        VStack {
            GroupBox("Saved items") {
                Text("You`ve saved 5 items")
            }
            .padding()

            GroupBox {
                Text("You`ve saved 5 items")
            } label: {
                Label("Saved items", systemImage: "star.fill")
            }
            .padding()
            
            GroupBox {
                Text("You`ve saved 5 items")
            } label: {
                Label("Saved items", systemImage: "star.fill")
            }
            .padding()
            .groupBoxStyle(.groupBoxSave)
        }
        .background(.mint)
    }
}

struct GroupBoxSave: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading, spacing: 5) {
            configuration.label
            configuration.content
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 8))
    }
}

extension GroupBoxStyle where Self == GroupBoxSave {
    static var groupBoxSave: GroupBoxSave {
        .init()
    }
}

#Preview {
    Video38_GroupBox_Style()
}
