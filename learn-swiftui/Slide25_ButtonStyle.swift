//
//  Slide25_ButtonStyle.swift
//  learn-swiftui
//
//  Created by Mac mini on 25/9/25.
//

import SwiftUI

struct Slide25_ButtonStyle: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                Button("Subcribe channel") {
                }
                .padding()
                .background(.red)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                
                Button("Subcribe channel") {
                }
                .tint(.red)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 8))
                .controlSize(.large)
                
                Button("Subcribe channel") {
                }
                .tint(.red)
                .buttonStyle(.automatic)
                .buttonBorderShape(.roundedRectangle(radius: 8))
                .controlSize(.large)
                
                Button("Subcribe channel") {
                }
                .tint(.red)
                .buttonStyle(.bordered)
                .buttonBorderShape(.roundedRectangle(radius: 8))
                .controlSize(.large)
                
                Button("Subcribe channel") {
                }
                .tint(.red)
                .buttonStyle(.borderless)
                .buttonBorderShape(.roundedRectangle(radius: 8))
                .controlSize(.large)
                
                Button("Subcribe channel") {
                }
                .tint(.red)
                .buttonStyle(.plain)
                .buttonBorderShape(.roundedRectangle(radius: 8))
                .controlSize(.large)
                
            }
            Divider()
//            VStack {
//                Button("Subcribe channel") {
//                }
//                .tint(.red)
//                .buttonStyle(.borderedProminent)
//                .buttonBorderShape(.roundedRectangle(radius: 8))
//                .controlSize(.large)
//
//                Button("Subcribe channel") {
//                }
//                .tint(.red)
//                .buttonStyle(.borderedProminent)
//                .buttonBorderShape(.capsule)
//                .controlSize(.large)
//
//                Button("Subcribe channel") {
//                }
//                .tint(.red)
//                .buttonStyle(.borderedProminent)
//                .buttonBorderShape(.automatic)
//                .controlSize(.large)
//
//                Button("Subcribe channel") {
//                }
//                .tint(.red)
//                .buttonStyle(.borderedProminent)
//                .buttonBorderShape(.roundedRectangle)
//                .controlSize(.large)
//            }
            
            Divider()
//            VStack {
//                Text("Button role, style example")
//
//                Button(role: .destructive) {
//                } label: {
//                    Text("Delete")
//                }
//                .buttonStyle(.borderedProminent)
//                .controlSize(.large)
//
//                Button(role: .cancel) {
//                } label: {
//                    Text("Delete")
//                }
//                .buttonStyle(.borderedProminent)
//                .controlSize(.large)
//
//                Button(role: .destructive) {
//                } label: {
//                    Text("Delete")
//                }
//                .buttonStyle(.bordered)
//                .controlSize(.large)
//
//
//                Button(role: .cancel) {
//                } label: {
//                    Text("Delete")
//                }
//                .buttonStyle(.bordered)
//                .controlSize(.large)
//
//
//            }
            
            VStack(spacing: 12) {
                Text("Material Example")
                Button("Material Example") {}
                    .padding()
                    .background(.ultraThinMaterial)
                    .controlSize(.large)
                
                Button("Material Example") {}
                    .padding()
                    .background(.thinMaterial, in: Capsule())
                
                Button("Material Example") {}
                    .padding()
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 8))
                    .controlSize(.large)
                
                Button("Material Example") {}
                    .padding()
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 8))
                    .controlSize(.large)
                
                Button("Material Example") {}
                    .padding()
                    .background(.ultraThickMaterial, in: RoundedRectangle(cornerRadius: 8))
                    .controlSize(.large)
                
                // qua la kho nho
                
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(.mint.opacity(0.5))
        }
    }
}

#Preview {
    Slide25_ButtonStyle()
}
