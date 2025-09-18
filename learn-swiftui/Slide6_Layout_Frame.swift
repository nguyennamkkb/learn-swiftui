//
//  Slide6_Layout_Frame.swift
//  learn-swiftui
//
//  Created by Mac mini on 18/9/25.
//

import SwiftUI

struct Slide6_Layout_Frame: View {
    var body: some View {
        
        // layout, frame
//        VStack {
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .background(Color.yellow)
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .background(Color.yellow)
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .background(Color.yellow)
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .background(Color.yellow)
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .background(Color.yellow)
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .background(Color.yellow)
//        }
//        .frame(maxWidth: .infinity, minHeight: 100, alignment: .topLeading)
//
//        .background(Color.accentColor)
//        .clipped()
        
        Image("image1")
            .resizable()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay(alignment: .topLeading ){
                Text("Namnl")
                    .foregroundStyle(.green)
                    .font(.largeTitle)
                    .padding(.vertical,10)
                    .background(
                        Color.red
                    )
                    .clipShape(Capsule())
                    .offset(x: 0, y: -20)
            }
            
        
    }
}

#Preview {
    Slide6_Layout_Frame()
}
