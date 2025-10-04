//
//  Video42_Manage_ignore_safearea.swift
//  learn-swiftui
//
//  Created by Mac mini on 2/10/25.
//

//chua xong
import SwiftUI

struct Video42_Manage_ignore_safearea: View {
    private var gradient: [Color] = [
        .blue, .red,
    ]

    private var bacgGround: some View {
        LinearGradient(
            colors: gradient,
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
    }

    var body: some View {
        NavigationView {
            ZStack {
                bacgGround
                NumberList()
                    
            }
            .navigationTitle("Home")
            .ignoresSafeArea(.keyboard, edges: [.bottom])
        }
    }
}

struct NumberList: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0 ... 20, id: \.self) { number in
                    Text("Number \(number)")
                }
                .navigationTitle("Numbers")
               
            }
            .safeAreaInset(edge: .bottom, alignment: .trailing) {
                plusButton
            }
        }
    }
}

private extension NumberList {
    var plusButton: some View {
        Button {
            print("Plus tapped")
        } label: {
            Image(systemName: "plus")
                .symbolVariant(.fill)
                .font(.system(size: 44, weight: .bold, design: .rounded))
        }
    }
}

#Preview {
    Video42_Manage_ignore_safearea()
}
