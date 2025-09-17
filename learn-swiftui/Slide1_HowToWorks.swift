//
//  Slide1_HowToWorks.swift
//  learn-swiftui
//
//  Created by Mac mini on 17/9/25.
//

import SwiftUI

// 3 truyen du lieu
struct Slide1_HowToWorks: View {
    @State private var isOpen: Bool = false
    var body: some View {
        VStack {
            ViewDependencyArrow(isOpen: $isOpen)
                
            Button {
                withAnimation {
                    isOpen.toggle()
                }
            } label: {
                Text("Toggle arrow")
            }
        }
    }
}

struct ViewDependencyArrow: View {
    @Binding var isOpen: Bool
    var body: some View {
        Image(systemName: "arrow.down")
            .rotationEffect(.init(degrees: isOpen ? 0 : 180))
    }
}

#Preview {
    Slide1_HowToWorks()
}

// 2
// struct Slide1_HowToWorks: View {
//    @State private var isMessageShown: Bool = false
//    var body: some View {
//        VStack {
//            if isMessageShown {
//                Text("I hope youre enjoying this video")
//                    .onAppear {
//                        print("added view to screen")
//                    }
//                    .onDisappear {
//                        print("removed view from screen")
//                    }
//            }
//            Button {
//                withAnimation{
//                    isMessageShown.toggle()
//                }
//            }label: {
//                Text("Tap to toggle message")
//            }
//        }
//    }
// }
//
// #Preview {
//    Slide1_HowToWorks()
// }

// 1
// struct Slide1_HowToWorks: View {
//    @State private var isOpen: Bool = false
//    var body: some View {
//        let _ = Self._printChanges()
//        VStack {
//            Image(systemName: "arrow.down")
//                .rotationEffect(.init(degrees: isOpen ? 0 : 180))
//
//            Button {
//                withAnimation{
//                    isOpen.toggle()
//                }
//            } label: {
//                Text("Toggle Arrow")
//            }
//        }
//    }
// }
//
// #Preview {
//    Slide1_HowToWorks()
// }
