//
//  Slide24_Button.swift
//  learn-swiftui
//
//  Created by Mac mini on 25/9/25.
//

import SwiftUI

struct Slide24_Button: View {
    @State private var exampleOneCount: Int = 0
    var body: some View {
        ScrollView {
//            VStack {
//                Text("Example One Number: \(exampleOneCount)")
//                Button {
//                    exampleOneCount += 1
//                } label: {
//                    Text("Tap me")
//
//                }
//
//            }

            VStack {
                Text("Example2 One Number: \(exampleOneCount)")
                Button(action: incrementCount) {
                    Text("Tap me")
                }
            }

            Group {
                Button(role: .cancel) {
                } label: {
                    Text("Cancel Button")
                }

                Button(role: .destructive) {
                } label: {
                    Text("Destructive Button")
                }

                Button(role: .none) {
                } label: {
                    Text("None Role Button")
                }
            }

            Button {
                print("Hey ive been pressed")
            } label: {
                Text("Press me")
                    .frame(maxWidth: .infinity, minHeight: 44)
                    .background(.red)
                    .tint(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()

            Button("Send Mail") {
                print("Send message tapped")
            }
            .buttonStyle(SendButtonStyle())

            SendButton() {
                print("Send message tapped from SendButton")
            }
        }
    }
}

struct SendButton: View {
    var callback: (() -> Void)? = nil
    var body: some View {
        Button("Send Mail") {
            callback?()
        }
        .buttonStyle(.sendButtonStyle)
    }
}

extension ButtonStyle where Self == SendButtonStyle {
    static var sendButtonStyle: SendButtonStyle { .init() }
}

struct SendButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: "paperplane")
                .symbolVariant(.fill)
            Divider()
                .padding(.vertical, 5)
            configuration.label
        }
        .frame(maxWidth: 150, minHeight: 55)
        .background(.mint)
        .foregroundStyle(.white)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .opacity(configuration.isPressed ? 0.7 : 1.0)
    }
}

private extension Slide24_Button {
    func incrementCount() {
        exampleOneCount += 1
    }
}

#Preview {
    Slide24_Button()
}
