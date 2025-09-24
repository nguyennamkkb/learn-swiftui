//
//  Slide_Summary.swift
//  learn-swiftui
//
//  Created by Mac mini on 24/9/25.
//

import SwiftUI

struct Slide_Summary: View {
    @State private var count = 0
    var body: some View {
//        borderView
//        alignment
        state1(count: $count)
    }

    struct state1: View {
        @Binding var count: Int
        var body: some View {
            VStack(spacing: 20) {
                Text("Hello, World!")

                Text("So lan nhan: \(count)")
                    .font(.title)
                    .padding()

                Button(action: {
                    count += 1
                }, label: {
                    Text("Nhap")
                        .font(.title)
                        .frame(width: 120)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
            }
        }
    }

    let alignment: some View =
        VStack {
            Text("Hello, World!")
                .padding()
                .border(.green)

            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 0)
                        .stroke(.blue, lineWidth: 4)
                        .frame(width: 60, height: 60)

                    Circle()
                        .frame(width: 60, height: 60)
                        .offset(x: 20, y: 30)
                }
            }
        }
        .frame(width: 200, height: 200, alignment: .trailing)
        .border(Color.red)
    // border, radius
    let borderView: some View = Text("Hello, World!")
        .padding()
        .background(Color.yellow)
        .cornerRadius(30)
        .border(.red)
}

#Preview {
    Slide_Summary()
}
