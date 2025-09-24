//
//  Slide18_ProgressView.swift
//  learn-swiftui
//
//  Created by Mac mini on 25/9/25.
//

import SwiftUI

struct Slide18_ProgressView: View {
    @State private var progressValue: Double = 0
    @State private var progressValue2: Double = 0
    var body: some View {
        VStack {
//            VStack {
//                ProgressView()
//                Text("Loading...")
//            }
//            VStack {
//                ProgressView("progress1", value: progressValue)
//                    .tint(.black)
//                Button {
//                    withAnimation{
//                        progressValue += 0.1
//                    }
//                } label: {
//                    Text("increment")
//                }
//            }

            VStack {
                ProgressView(
                    value: progressValue2,
                    total: 100
                ) {
                    Label {
                        Text("Upload value: \(progressValue2)")
                    } icon: {
                        Image(systemName: "arrow.counterclockwise.icloud")
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                }
                Button {
                    withAnimation {
                        progressValue2 += 5
                    }
                } label: {
                    Text("increment")
                }
            }

            ProgressView {
                Label {
                    Text("Fetch value")
                } icon: {
                    Image(systemName: "arrow.counterclockwise.icloud")
                }
                .frame(maxWidth: .infinity, alignment: .center)
            }
            .progressViewStyle(.roundedStyle)
            .frame(maxWidth: 300)
        }
    }
}

extension ProgressViewStyle where Self == RoudedProgressViewStyle {
    static var roundedStyle: RoudedProgressViewStyle {
        .init()
    }
}


struct RoudedProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .padding()
            .background(.red)
            .foregroundStyle(.white)
            .tint(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}
#Preview {
    Slide18_ProgressView()
}
