//
//  Slide29_Multi-Line_TextField.swift
//  learn-swiftui
//
//  Created by Mac mini on 29/9/25.
//

import SwiftUI

struct Slide29_Multi_Line_TextField: View {
    @State private var text: String = ""

    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)

            textEditorVw
            descriptionTxtVw
            submitBtn
        }
        .padding()
    }
}

extension Slide29_Multi_Line_TextField {
    var textEditorVw: some View {
        TextEditor(text: $text)
            .frame(height: 250)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.gray.opacity(0.2), lineWidth: 4)
            )
    }

    var descriptionTxtVw: some View {
        Text("Description")
    }

    var submitBtn: some View {
        Button {
            print(" the user inputted: \(text)")
        } label: {
            Text("Submit")
        }
    }
}

#Preview {
    Slide29_Multi_Line_TextField()
}
