//
//  Slide17_padding.swift
//  learn-swiftui
//
//  Created by Mac mini on 25/9/25.
//

import SwiftUI

struct Slide17_padding: View {
    var body: some View {
        VStack {
            Image(.image1)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding(.bottom, 20)
                .border(.red, width: 2)
            
            Text("Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!")
                .frame(maxWidth: 200)
                .foregroundStyle(.white)
                .border(.red)
                
        }
        .padding()
        .background(Color.gray)
        .clipShape(
            RoundedRectangle(cornerRadius: 12)
        )
        .border(Color.red)
    }
}

#Preview {
    Slide17_padding()
}
