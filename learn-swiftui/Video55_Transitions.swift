//
//  Video55_Transitions.swift
//  learn-swiftui
//
//  Created by Mac mini on 6/10/25.
//

import SwiftUI

struct Video55_Transitions: View {
    @State private var isVisible = false
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2)) {
                Group {
                    DefaultAnimationView()
                    TemplateAnimationView(title: "Toggle Opacity", transition: .opacity)

                    TemplateAnimationView(title: "Toggle move top", transition: .move(edge: .top))

                    TemplateAnimationView(title: "Toggle move bottom", transition: .move(edge: .bottom))

                    TemplateAnimationView(title: "Toggle move leading", transition: .move(edge: .leading))

                    TemplateAnimationView(title: "Toggle move trailing", transition: .move(edge: .trailing))

                    TemplateAnimationView(title: "Toggle slide", transition: .slide)

                    TemplateAnimationView(title: "Toggle scale", transition: .scale)

                    TemplateAnimationView(title: "Toggle scale form 50%", transition: .scale(scale: 0.5))

                    TemplateAnimationView(title: "Toggle scale form 50% top left", transition: .scale(scale: 0.5, anchor: .topLeading))
                }
                Group {
                    let combinationTransition = AnyTransition.slide
                        .combined(with: .scale(scale: 0.5))
                        .combined(with: .opacity)

                    TemplateAnimationView(title: "Toggle combination", transition: combinationTransition)

                    let asymmetricTransition = AnyTransition.asymmetric(
                        insertion: .move(edge: .bottom).combined(with: .opacity),
                        removal: .slide)
                    TemplateAnimationView(title: "Toggle asymmetric", transition: asymmetricTransition)
                }

                Group {
                    let firstCombinationTransition = AnyTransition
                        .move(edge: .bottom)
                        .combined(with: .opacity)
                    
                    let secondCombinationTransition = AnyTransition.move(edge: .bottom)
                        .combined(with: .scale)
                    
                    let asymmetricTransition = AnyTransition.asymmetric(
                        insertion: firstCombinationTransition,
                        removal: secondCombinationTransition)
                    
                    TemplateAnimationView(title: "Toggle custom asymmetric", transition: asymmetricTransition)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct TemplateAnimationView: View {
    @State private var isVisible = false
    let title: String
    let transition: AnyTransition
    var body: some View {
        VStack {
            if isVisible {
                RoundedRectangle(cornerRadius: 6, style: .continuous)
                    .fill(.blue)
                    .frame(width: 100, height: 100)
                    .transition(transition)
            }

            Button(title) {
                withAnimation(.linear(duration: 0.25)) {
                    isVisible.toggle()
                }
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .padding()
        }
        .frame(maxWidth: .infinity, minHeight: 200)
        .background(.gray.opacity(0.1), in: RoundedRectangle(cornerRadius: 8, style: .continuous))
    }
}

struct DefaultAnimationView: View {
    @State private var isVisible = false
    var body: some View {
        VStack {
            if isVisible {
                RoundedRectangle(cornerRadius: 6, style: .continuous)
                    .fill(.blue)
                    .frame(width: 100, height: 100)
            }

            Button("Toggle Visibility") {
                withAnimation(.linear(duration: 0.25)) {
                    isVisible.toggle()
                }
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        }
    }
}

#Preview {
    Video55_Transitions()
}
