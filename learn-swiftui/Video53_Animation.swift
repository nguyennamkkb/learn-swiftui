//
//  Video53_Animation.swift
//  learn-swiftui
//
//  Created by Mac mini on 5/10/25.
//

import SwiftUI

struct Video53_Animation: View {
    @State private var isGreen = false
    @State private var isMinimized = false
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .fill(isGreen ? .green : .red)
                .scaleEffect(isMinimized ? 0.5 : 1)
                .animation(.easeInOut, value: isGreen)
                .animation(.spring.delay(0.5).speed(0.25), value: isMinimized)

            Button(isGreen ? "Turn red" : "Turn green") {
//                withAnimation {
                isGreen.toggle()
//                }
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)

            Button(isMinimized ? "Maxomize" : "Minimized") {
//                withAnimation(.easeIn) {
                isMinimized.toggle()
//                }
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        }
    }
}

struct SyncView: View {
    @State private var isSyncing = false
    let config: AnimationConfig
    private var rotationAnimation: Animation {
        config
            .animation
        .repeatForever(autoreverses: false)
    }
    var body: some View {
        VStack {
            Image(systemName: "arrow.2.circlepath")
                .symbolVariant(.circle.fill)
                .foregroundStyle(.blue)
                .font(.largeTitle)
                .rotationEffect(.init(degrees: isSyncing ? 360 : 0))
                .animation(isSyncing ? rotationAnimation : .default, value: isSyncing)
                .onAppear {
                    isSyncing.toggle()
                }
            
            Text(config.description)
                
        }
    }
}

#Preview {
    SyncView(config: AnimationConfig.options.first!)
//    Video53_Animation()
}
