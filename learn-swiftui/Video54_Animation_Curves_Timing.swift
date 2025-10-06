//
//  Video54_Animation_Curves_Timing.swift
//  learn-swiftui
//
//  Created by Mac mini on 6/10/25.
//

import SwiftUI

//https://cubic-bezier.com/
struct Video54_Animation_Curves_Timing: View {
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 32) {
                ForEach(AnimationConfig.options) { config in
                    SyncView(config: config)
                }
            }
        }
    }
}

struct AnimationConfig: Identifiable {
    let id = UUID()
    let animation: Animation
    let description: String
}

extension AnimationConfig {
    static var options: [AnimationConfig] = [
        .init(animation: .easeInOut, description: "easeInOut"),
        .init(animation: .easeIn, description: "easeIn"),
        .init(animation: .easeOut, description: "easeOut"),
        .init(animation: .linear, description: "linear"),

        .init(animation: .easeInOut(duration: 1.5), description: "easeInOut 1.5"),
        .init(animation: .easeIn(duration: 1.5), description: "easeIn 1.5"),
        .init(animation: .easeOut(duration: 1.5), description: "easeOut 1.5"),
        .init(animation: .linear(duration: 1.5), description: "linear 1.5"),
        .init(animation: .linear(duration: 1.5).delay(0.5), description: "linear 1.5 delay 0.5"),
        .init(animation: .timingCurve(0.17,0.67,0.1,-0.1, duration: 2), description: "custom")
    ]
}

#Preview {
    Video54_Animation_Curves_Timing()
}
