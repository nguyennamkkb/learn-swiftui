//
//  Video48_ScrollView.swift
//  learn-swiftui
//
//  Created by Mac mini on 4/10/25.
//

import SwiftUI

struct Video48_ScrollView: View {
    @State private var hasReachedEnd: Bool = false
    private let range: ClosedRange<Int> = 0 ... 50
    var body: some View {
        VStack {
            ScrollViewReader { proxy in
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(range, id: \.self) { index in
                            createText(index: index)
                        }
                    }
                    .padding(.bottom, 50)
                    .overlay(alignment: !hasReachedEnd ? .bottomLeading : .bottomTrailing) {
                        HStack {
                            Button {
                                if let firstIndex = range.min() {
                                    withAnimation {
                                        proxy.scrollTo(firstIndex)
                                        
                                    }
                                    hasReachedEnd = false
                                }
                            } label: {
                                Image(systemName: "arrow.backward")
                            }

                            Button {
                                if let firstIndex = range.max() {
                                    withAnimation {
                                        proxy.scrollTo(firstIndex)
                                        hasReachedEnd = true
                                    }
                                }
                            } label: {
                                Image(systemName: "arrow.forward")
                            }
                        }
                        .symbolVariant(.fill)
                        .font(.title.weight(.black))
                    }
                }
            }
        }
    }

    func createText(index: Int) -> some View {
        Text("\(index)")
            .padding()
            .foregroundStyle(.black)
            .frame(maxWidth: .infinity)
            .background(Color.green)
            .cornerRadius(8)
            .padding(.horizontal, 8)
    }
}

#Preview {
    Video48_ScrollView()
}
