//
//  Slide3_Border.swift
//  learn-swiftui
//
//  Created by Mac mini on 18/9/25.
//

import SwiftUI

struct Slide3_Border: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .padding()
//            .border(.accent, width: 5)
//            .cornerRadius(10)

//        Text("Hello, World!")
//            .padding()
//            .overlay(
//                RoundedRectangle(cornerRadius: 12)
//                    .stroke(.blue, lineWidth: 5)
//            )

        Text("Hello, World!")
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(
                        AngularGradient(
                            gradient: Gradient(colors: [.red, .green, .red]),
                            center: .center,
                            endAngle: .degrees(360)
                        )
                        , lineWidth: 5)
            )

//        Rectangle()
//            .strokeBorder(
//                AngularGradient(
//                    gradient: Gradient(colors: [.red, .green, .red]),
//                    center: .center,
//                    endAngle: .degrees(360)
//                ),
//                lineWidth: 6
//            )
            .frame(width: 100, height: 200)
    }
}

#Preview {
    Slide3_Border()
}
