//
//  Video43_Download_Image.swift
//  learn-swiftui
//
//  Created by Mac mini on 3/10/25.
//

import SwiftUI

struct Video43_Download_Image: View {
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://picsum.photos/200")) {
                phase in
                switch phase {
                case .empty:
                    Color.gray.overlay(
                        ProgressView()
                    )
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                case .failure(let error):
                    Color.gray
                        .opacity(0.7)
                        .overlay(
                            Image(systemName: "exclamationmark.icloud")
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                        )
                }

            }
            .frame(width: 100, height: 100)
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .circular))
            .transition(.opacity.combined(with: .scale))
        }
    }
}

#Preview {
    Video43_Download_Image()
}
