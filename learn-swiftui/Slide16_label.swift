//
//  Slide16_label.swift
//  learn-swiftui
//
//  Created by Mac mini on 25/9/25.
//

import SwiftUI

struct Slide16_label: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack {
            Label("Pick a color", systemImage: "paintpalette")
                .foregroundStyle(.blue)

//            Label("Pick a color", image:  "image1")
            Label {
                Text("Pick a color")
                    .foregroundStyle(.red)
            } icon: {
                Image(.image1)
                    .resizable()
                    .frame(width: 40, height: 40)
            }
            .labelStyle(.strongCapsule(color: .green))
//            .labelStyle(StrongCapsuleStyle(color: .gray))
        }
    }
}

extension LabelStyle where Self == CapsuleStyle {
    static var capsule: CapsuleStyle {
        .init()
    }
}

extension LabelStyle where Self == StrongCapsuleStyle {
    static func strongCapsule(color: Color = .red) -> StrongCapsuleStyle {
        .init(color: .black)
    }
}

struct CapsuleStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        Label(configuration)
            .padding()
            .background(.blue)
            .clipShape(Capsule())
    }
}

struct StrongCapsuleStyle: LabelStyle {
    let color: Color

    func makeBody(configuration: Configuration) -> some View {
        Label {
            configuration
                .title
                .foregroundStyle(.white)
                .font(.system(size: 15, weight: .bold))
        } icon: {
            configuration.icon
        }
        .padding()
        .background(color)
        .clipShape(Capsule())
    }
}

#Preview {
    Slide16_label()
}
