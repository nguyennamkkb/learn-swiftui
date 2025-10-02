//
//  Slide26_Tabbar.swift
//  learn-swiftui
//
//  Created by Mac mini on 28/9/25.
//

import SwiftUI
import Combine


enum Screen {
    case screen1
    case screen2
}

final class TabRouter: ObservableObject {
    @Published var screen: Screen = .screen1
    func changeScreen(screen: Screen) {
        self.screen = screen
    }
}

struct Slide26_Tabbar: View {
    @StateObject var router = TabRouter()
    
    var body: some View {
        TabView(selection: $router.screen) {
            Slide26_screen_1()
                .badge(10)
                .tag(Screen.screen1)
                .environmentObject(router)
                .tabItem {
                    Label("scr ee2 1", systemImage: "star")
                }

            Slide26_screen_2()
                .tag(Screen.screen2)
                .environmentObject(router)
                .tabItem {
                    Label("scree2 2", systemImage: "star")
                }
        }
    }
}

struct Slide26_screen_1: View {
    @EnvironmentObject var router: TabRouter
    var body: some View {
        VStack {
            Text("Screen 1")
            Button("Go to screen 2") {
                router.changeScreen(screen: .screen2)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.green)
    }
}

struct Slide26_screen_2: View {
    @EnvironmentObject var router: TabRouter

    var body: some View {
        VStack {
            Text("Screen 2")
            Button(role: .cancel, action: {
                router.changeScreen(screen: .screen1)
            }, label: {
                Text("Go to screen 1")
            })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.red)
    }
}

#Preview {
    Slide26_Tabbar()
}
